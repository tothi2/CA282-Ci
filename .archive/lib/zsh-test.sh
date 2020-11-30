#!/bin/sh

zsh add.zsh 1 2 3 | grep -q -w 6 &&
  zsh add.zsh 1 2 3 | wc -l | grep -q -w 1
