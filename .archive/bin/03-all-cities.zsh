#!/usr/bin/zsh

source bin/00-common.zsh

run-mysql <<EOF
   SELECT name FROM cities;
EOF
