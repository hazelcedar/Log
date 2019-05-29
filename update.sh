#!/bin/sh

set -e # fail fast
set -x # print commands

git clone repo-concourse updated-log

cd updated-log
echo "the concourse repository was updated on $(date)" >> concourseLog.txt

git config --global user.email "hazelcedar@gmail.com"
git config --global user.name "hazelcedar"

git add .
git commit -m "log file update"
git push
