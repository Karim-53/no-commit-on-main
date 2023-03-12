#!/bin/bash
# src: https://medium.com/supersonic-generation/git-deny-commit-to-master-branch-with-git-pre-commit-hook-71e868d1a528
readonly current_branch=$(git branch | grep '*' | awk '{ print $2 }')

echo current branch is "$current_branch"

if [[ "$current_branch" = "master" ]]; then
  echo Do not commit to master
  exit 1
fi