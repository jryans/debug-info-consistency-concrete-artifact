import glob
import warnings

import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

idx = pd.IndexSlice

target_name = None
friendly_name = None
data_path_prefix = ""

# Ignore warning about `variant` attributes below
warnings.filterwarnings(
  "ignore",
  "Pandas doesn't allow columns to be created via a new attribute name",
)

# Ignore warning when using `concat` during load
warnings.filterwarnings(
  "ignore",
  "In a future version, object-dtype columns with all-bool values will not be "
  "included in reductions with bool_only=True. "
  "Explicitly cast to bool dtype instead.",
)

def configure(target, friendly, path_prefix=""):
  global target_name, friendly_name, data_path_prefix
  target_name = target
  friendly_name = friendly
  data_path_prefix = path_prefix

def load_data():
  assert target_name
  assert friendly_name

  dfs = []

  def read_file(file):
    df = pd.read_table(file)
    # Clean up column names
    df.columns = df.columns.str.strip()
    return df

  def read_run(dir, variant):
    df = None
    for file in glob.iglob(f"{dir}/**/consistency.tsv", recursive=True):
      df = pd.concat([df, read_file(file)])

    # Sort by name to aid matching across datasets
    df = df.sort_values("Name", ignore_index=True)
    # Summarise across inlined call sites with arithmetic mean
    # df = df.groupby("Name", as_index=False).mean(numeric_only=True)

    df.variant = variant
    dfs.append(df)

  read_run("clang/13/O0", ("Clang", "13", "O0"))
  read_run("clang/13/O0-mem2reg", ("Clang", "13", "O0-mem2reg"))

  # Check names present in each compilation for differences
  print("# Names")
  common_names = set(dfs[0]["Name"])
  for df in dfs:
    common_names = common_names & set(df["Name"])
  print(f"Common names: {len(common_names)}")
  all_names = set()
  for df in dfs:
    all_names = all_names | set(df["Name"])
  all_names_df = pd.DataFrame({ "Name": list(all_names) })
  print(f"All names: {len(all_names)}")
  print()

  def name_diffs(df):
    print(f"## {df.variant}")
    missing_all_diff = len(all_names_df[~all_names_df["Name"].isin(df["Name"])])
    print(f"{missing_all_diff} names from other compilations missing from this compilation")
    common_diff = len(df[~df["Name"].isin(common_names)])
    print(f"{common_diff} names missing from one or more other compilations")
    print()

  for df in dfs:
    name_diffs(df)

  # def add_missing_rows(df):
  #   variant = df.variant
  #   # Create additional dataset with missing rows
  #   missing_df = all_names_df[~all_names_df["Name"].isin(df["Name"])].copy()
  #   missing_df["Cov (B)"] = 0
  #   missing_df["Scope (B)"] = 1
  #   missing_df["Cov (L)"] = 0
  #   missing_df["Scope (L)"] = 1
  #   missing_df["Adj Cov (L)"] = 0
  #   missing_df["Flt Cov (L)"] = 0
  #   missing_df["Src Scope (L)"] = 1
  #   print(f"Adding {len(missing_df)} missing names to {variant}")
  #   # Append to existing data and resort
  #   df = pd.concat(
  #     [
  #       df,
  #       missing_df,
  #     ],
  #     ignore_index=True,
  #   )
  #   assert len(df) == len(all_names_df), "Names still missing"
  #   df = df.sort_values("Name", ignore_index=True)
  #   df.variant = variant
  #   return df

  # # Add any missing rows so that all compilations contain the union of all names
  # for (i, df) in enumerate(dfs):
  #   dfs[i] = add_missing_rows(df)

  def df_keys(df):
    keys = df.variant
    (family, version, level) = keys
    variant = f"{family} {version}, {level}"
    return (family, version, level, variant)

  compilations_df = pd.concat(
    dfs,
    keys=map(df_keys, dfs),
    names=[
      "Family",
      "Version",
      "Level",
      "Variant",
      "Row",
    ],
  )

  return compilations_df

def normalise(df):
  # Convert boolean columns to assignment counts
  # df["Function Covered Assns"] = df.where(df["Function Covered"],
  # 0)["Assignments"]

  # Normalise assignment count columns
  # TODO: Filter out rows where assignments == 0...?
  df["Matching Value"] = df["Matching Value"] / df["Assignments"].replace(0, 1)
  df["Matching Coords"] = df["Matching Coords"] / df["Assignments"].replace(0, 1)

def variables_with_matching_coords_by_optimisation_level(df):
  df = df.copy()
  df["Order"] = df.sort_values(by="Matching Coords", ascending=False).groupby("Variant").cumcount()
  g = sns.relplot(
    df,
    x="Order",
    y="Matching Coords",
    hue="Level",
    kind="line",
    height=3.5,
  )
  sns.move_legend(
    g,
    "lower left",
    bbox_to_anchor=(0.165, 0.155),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Variables with source coords matching O0 ({friendly_name})",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Normalised events with matching source coords",
    ybound=(0, 1.004),
  )

def variables_with_matching_values_by_optimisation_level(df):
  df = df.copy()
  df["Order"] = df.sort_values(by="Matching Value", ascending=False).groupby("Variant").cumcount()
  g = sns.relplot(
    df,
    x="Order",
    y="Matching Value",
    hue="Level",
    kind="line",
    height=3.5,
  )
  sns.move_legend(
    g,
    "lower left",
    bbox_to_anchor=(0.165, 0.155),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Variables with values matching O0 ({friendly_name})",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Normalised events with matching values",
    ybound=(0, 1.004),
  )

def status_by_optimisation_level(df):
  df = df.copy()
  df = df.drop(columns=["Name"])
  df = df.groupby(level=[0,1,2,3]).sum()
  df = df.melt(
    var_name="Status",
    value_name="Count",
    ignore_index=False,
  )
  # Copy index to column to help `catplot`
  df["Level"] = df.index.get_level_values("Level")
  g = sns.catplot(
    df,
    x="Level",
    y="Count",
    hue="Status",
    orient="v",
    kind="bar",
    height=3.5,
  )
  g.set(
    title=f"Status by optimisation level ({friendly_name})",
    xlabel="Optimisation level",
    ylabel="Assignment events",
  )
