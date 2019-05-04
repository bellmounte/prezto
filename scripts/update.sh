#!/usr/bin/env sh

set -e

git fetch
git rebase
git submodule update
