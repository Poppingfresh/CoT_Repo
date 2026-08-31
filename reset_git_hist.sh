#!/bin/sh

git checkout --orphan latest_branch
git add -A
git commit -am "Reset logs"
git branch -D main
git branch -m main
git push -f origin main

git branch --set-upstream-to=origin main

