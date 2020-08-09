#!/bin/sh -l

ls -la
echo "PARAM: $1"
cd /github/workspace
qjsc -o $1 $1.js
