#!/usr/bin/env coffee

total = 0

for v in process.argv[2..]
  total += parseInt v

console.log total
