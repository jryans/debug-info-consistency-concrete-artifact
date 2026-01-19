import glob
import os.path

import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

def load_data(target_name, data_path_prefix):
  dfs = []

  def read_file(file):
    df = pd.read_table(file, names=["Unique Events"])
    return df

  def read_run(dir, variant):
    df = None
    for count_file in glob.iglob(f"{data_path_prefix}/{dir}/divergences/default/counts/*"):
      df_segment = read_file(count_file)
      df_divergence_type = os.path.basename(count_file)
      df_segment["Divergence Type"] = df_divergence_type
      df = pd.concat([df, df_segment])
    df = df.sort_values("Divergence Type", ignore_index=True)
    df.variant = variant
    dfs.append(df)

  # read_run("clang/13/O1", ("Clang", "13", "O1"))
  # read_run("clang/13/O2", ("Clang", "13", "O2"))
  read_run("clang/18/O1", ("Clang", "18", "O1"))
  # read_run("gcc/11/O1", ("GCC", "11", "O1"))
  # # Lots of "no info for this address", skipping for now
  # # read_run("gcc/11/O2", ("GCC", "11", "O2"))
  # read_run("gcc/14/O1", ("GCC", "14", "O1"))

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

def divergences_by_package(df):
  df = df.copy()
  df = df[df["Divergence Type"] != "before"]
  g = sns.displot(
    df,
    x="Package",
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
  # for tick in ax.xaxis.get_major_ticks()[1::2]:
  #   tick.set_pad(12)
  ax.tick_params(axis="x", rotation=90)
  g.set(
    title="Divergent call tree trace events with Clang 18, O1\nfrom various package executions",
    xlabel="Package",
    ylabel="Fraction of unique trace events",
  )
  return g
