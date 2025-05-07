#!/usr/bin/env bash

for file in $(ls -A1 |egrep -v "install.sh|^.git$"); do 
  echo -en "symlinking $file...";
  ln -sf $PWD/"$file" ~/"$file"
  echo 'done';
done
