#!/bin/sh

coffee add.coffee 1 2 3 | grep -q -w 6 &&
  coffee add.coffee 1 2 3 | wc -l | grep -q -w 1
