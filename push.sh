#!/bin/bash

set -e

if ! git ls-files --other --directory --exclude-standard | sed q1 > /dev/null; then
  git add .
  git commit -m 'Autoexport aliases.'
  git push origin main
fi

