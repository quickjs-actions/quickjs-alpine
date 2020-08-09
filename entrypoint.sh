#!/bin/sh -l

cd /github/workspace
qjsc -flto -o $1 $1.js
./hello
