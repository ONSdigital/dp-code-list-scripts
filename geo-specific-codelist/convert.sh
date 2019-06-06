#!/usr/local/bin/bash

for input in "$@"; do

  go run ../code-list-scripts/cmd/convert/convert.go -file $input -geography true

done
