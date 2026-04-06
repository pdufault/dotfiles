#!/usr/bin/env bash

for file in $(ls -A1 |egrep -v "install.sh|^.git$|deps|CLAUDE.md"); do
  echo -en "symlinking $file...";
  ln -sf $PWD/"$file" ~/"$file"
  echo 'done';
done

# Claude Code config
mkdir -p ~/.claude
echo -en "symlinking CLAUDE.md..."
ln -sf $PWD/CLAUDE.md ~/.claude/CLAUDE.md
echo 'done'
