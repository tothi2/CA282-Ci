#!/usr/bin/zsh

cache=$argv[1]
url=$argv[2]
name=$argv[3]

set -e
set -x

cd $cache

if [[ -f $name ]]
then
   print "$cache/$name exists; skipping download."
else
   wget -O $name.tmp -q $url && mv -v $name.tmp $name
fi
