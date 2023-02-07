#!/bin/bash

mkdir folder1
touch f_{1..3}

if [ $# -eq 0 ]
then
  echo "Error: Please provide a directory name as argument."
  exit 1
fi

folder=$1

if [ ! -d $folder ]
then
  echo "Error: $folder is not a directory."
  exit 1
fi

chmod -R go-rwx $folder

ls -l $folder