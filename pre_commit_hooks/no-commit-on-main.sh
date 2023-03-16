#!/usr/bin/env sh
# src: https://medium.com/supersonic-generation/git-deny-commit-to-master-branch-with-git-pre-commit-hook-71e868d1a528
# see also https://lynn-kwong.medium.com/use-pre-commit-commit-msg-and-pre-push-git-hooks-to-fix-your-python-code-asap-77d80d3ce412

readonly current_branch=$(git branch | grep '*' | awk '{ print $2 }')

echo current branch is "$current_branch"

if [[ "$current_branch" = "master" || "$current_branch" = "main" ]]; then
  message="Please don't commit directly to $current_branch."
  echo -e "\033[1;31mERROR: $message\033[0m";
  exit 1
fi
