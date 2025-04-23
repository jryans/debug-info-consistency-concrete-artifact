# Expects to run from this script's directory

for i in *; do
  [ -d "$i" ] || continue
  (cd $i; ../reproduce.sh)
done
