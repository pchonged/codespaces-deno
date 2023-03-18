#!/usr/bin/env sh

set -e

deno task build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git branch -M main
git remote add origin https://github.com/pchonged/ed.git
git push -u origin main

cd -