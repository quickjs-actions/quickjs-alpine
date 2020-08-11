#!/bin/sh -l

cd /github/workspace
qjsc -flto -o $1-alpine $1.js

