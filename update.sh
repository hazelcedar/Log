#!/bin/sh

set -e # fail fast
set -x # print commands

git clone repo-concourse updated-log

cd updated-log-repo
echo "the concourse repository was updated on $(date)" >> log-file.txt

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "log file update"
git push
