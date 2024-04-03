# Expects to run from each pass's directory

script -q check.md ../check.sh
dos2unix -q -f check.md
