#!/bin/bash

set -e

# This script sets up a git commit to push new documentation.

destdir=$(pwd)
cd ../ninja

ninja manual

mv doc/manual.html $destdir
cd $destdir
git add -A .
echo "done; run 'git commit' to commit new docs."
