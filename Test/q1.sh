#!/bin/bash

function info() {
  for file in "$@"; do
    if [ -f "$file" ]; then
      echo "$file is a regular file."
    elif [ -d "$file" ]; then
      echo "$file is a directory."
    else
      echo "$file is another type of file."
    fi
    ls -l "$file"
  done
}

function file_count() {
  local count=0
  for file in "$1"/*; do
    if [ -f "$file" ]; then
      ((count++))
    fi
  done
  echo "There are $count regular files in $1."
}

info "$@"
file_count "$1"
