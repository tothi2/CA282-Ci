#!/usr/bin/zsh

source bin/00-common.zsh

run-mysql <<EOF
   CREATE TABLE cities (
      name VARCHAR(255) NOT NULL,
      state VARCHAR(4) NOT NULL,
      LatD INT NOT NULL,
      LatM INT NOT NULL,
      LatS INT NOT NULL,
      NS VARCHAR(4) NOT NULL,
      LonD INT NOT NULL,
      LonM INT NOT NULL,
      LonS INT NOT NULL,
      EW VARCHAR(4) NOT NULL
   )
EOF
