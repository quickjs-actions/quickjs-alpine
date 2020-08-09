#!/bin/sh -l

cd /github/workspace
qjsc -flto -o $1-ubuntu $1.js

