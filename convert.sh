#!/usr/local/bin/bash

for input in "$@"; do

  go run cmd/convert/convert.go -file $input

done
