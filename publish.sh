#!/bin/sh

set -e # fail fast
set -x # print commands
ls
env
git clone resource-gist updated

cd updated
date >> bumpme

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date from concourse"
