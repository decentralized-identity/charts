#!/bin/bash
set -e 
set -o pipefail


for driver in $(find charts -depth 1 -type d | sort);do
  name="$(basename $driver)"
  echo "$name"
done
