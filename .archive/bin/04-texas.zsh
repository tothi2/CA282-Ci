#!/usr/bin/zsh

source bin/00-common.zsh

run-mysql <<EOF
   SELECT * FROM cities WHERE state = 'TX';
EOF

