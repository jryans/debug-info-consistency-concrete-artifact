import glob
import os.path
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
    df = pd.read_table(file, names=["Unique Events"])
    return df

  def read_run(dir, variant):
    df = None
    for count_file in glob.iglob(f"{dir}/divergences/summary/default/counts/*"):
      df_segment = read_file(count_file)
      df_divergence_type = os.path.basename(count_file)
      df_segment["Divergence Type"] = df_divergence_type
      df = pd.concat([df, df_segment])
    df.variant = variant
    dfs.append(df)

  read_run("clang/13/O1", ("Clang", "13", "O1"))
  read_run("gcc/11/O1", ("GCC", "11", "O1"))

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
  df["Norm. Unique Events"] = df["Unique Events"] / df.groupby(["Variant"])["Unique Events"].transform("max")

def divergences_by_compiler(df):
  df = df.copy()
  df = df[df["Divergence Type"] != "before"]
  families = df.index.get_level_values("Family")
  versions = df.index.get_level_values("Version")
  df["Compiler"] = families + " " + versions
  g = sns.displot(
    df,
    x="Compiler",
    weights="Norm. Unique Events",
    hue="Divergence Type",
    kind="hist",
    multiple="stack",
    height=3.5,
  )
  sns.move_legend(
    g,
    "center right",
    bbox_to_anchor=(1, 0.525),
    frameon=True,
    shadow=True,
    title=None,
  )
  ax = g.facet_axis(0, 0)
  ax.grid(False, "major", "x")
  g.set(
    title=f"Divergent call tree trace events during {friendly_name} executions at O1",
    xlabel="Compiler",
    # xbound=(0, df["Order"].max()),
    ylabel="Fraction of unique trace events",
    # ybound=(0, 1.004),
  )
