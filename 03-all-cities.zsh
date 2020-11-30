#!/usr/bin/zsh

source 00-common.zsh

run-mysql <<EOF
   SELECT name FROM cities;
EOF
