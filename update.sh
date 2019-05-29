#!/bin/sh

set -e # fail fast
set -x # print commands

git clone repo-concourse updated-log

cd updated-log

git pull

echo "the concourse repository was updated on $(date)" >> concourseLog.txt

git config --global user.email "hazelcedar@gmail.com"
git config --global user.name "hazelcedar"
git config --global github.token "1d041fe1be2106c361f68ee6350549e40235a42b"

git add .
git commit -m "log file update"
