#!/bin/bash
 
if [ $# -eq 0 ]; then
    echo "Usage: $0 <tar_directory>"
    exit 1
fi
 
tar_dir=$1
 
cd $tar_dir
 
tar_files=($(ls -t *.tar | head -n 5))
 
for file in *.tar; do
    if [[ ! " ${tar_files[@]} " =~ " ${file} " ]]; then
        rm $file
    fi
done
