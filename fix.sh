#!/bin/bash


cd display/release

grep 'attachments/' *.md | grep bullet_blue | while read line ; do

  echo PARSING: $line
  correct_filename=$(echo $line | sed 's|.*\[\(.*\)\].*|\1|')
  current_filename=$(echo $line | sed 's|.*\](\(.*\)) (.*)$|\1|')
  dir=$(dirname $current_filename)
  current_filename=$(basename $current_filename)

  echo "Replacing ${current_filename} with ${correct_filename} in ${dir}"


  # Step 1: update all references to use correct filename
  # TODO: -i
  sed -i "s|${current_filename}|${correct_filename}|" *.md

  # Step 2: rename the file
  mv "${dir}/${current_filename}" "${dir}/${correct_filename}"

done
