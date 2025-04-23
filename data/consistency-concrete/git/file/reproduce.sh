# TODO: Restructure this to capture a separate log for each version and level
script -q check.md ./check.sh
dos2unix -q -f check.md
