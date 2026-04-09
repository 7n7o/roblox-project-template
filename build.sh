#!/bin/bash
branch="${1:-all}"

if [[ "${branch}" == "all" ]]; then
  "$0" dev
  "$0" prod
  wait
  echo "Complete"
  exit 0
fi
mkdir build
rm -rf generated/library
out_dir="generated/library"
in_dir="src"

echo "Processing source code"
darklua process $in_dir $out_dir -c ".darklua_build.json"
darklua process $out_dir $out_dir -c ".darklua_${branch}.json"

echo "Building rojo project"
rojo build -o "build/Project_${branch}.rbxm"


echo "Done"
ls -lh "build/Project_${branch}.rbxm" | awk '{print $5, $9}'