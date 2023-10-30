#!/bin/bash

set -e

cd ~/aliases

if ! git ls-files --other --directory --exclude-standard | sed q1 > /dev/null || ! git diff-files --quiet; then
  git add .
  git commit -m 'Autoexport aliases.'
fi

if ! git ls-remote origin | grep $(git rev-parse HEAD); then
  git push origin main
fi

