#!/usr/bin/env sh

set -e

git remote -v

if [[ $(git remote -v | grep upstream) ]]; then
    echo "upstream already configured"
else
    echo "configuring upstream"
    git remote add upstream git@github.com:sorin-ionescu/prezto.git
    git remote -v
fi

git checkout master

git fetch upstream

git merge upstream/master
