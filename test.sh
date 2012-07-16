#!/bin/sh

for dir in `find -type f -name Makefile | xargs -n 1 dirname`
do
  (cd $dir && echo "=>" $dir && make)
done
