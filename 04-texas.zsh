#!/usr/bin/zsh

source 00-common.zsh

run-mysql <<EOF
   SELECT * FROM cities WHERE state = 'TX';
EOF

