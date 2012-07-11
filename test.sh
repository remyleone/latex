#!/bin/sh

for dir in `find . -not -iwholename '*.git*' -type d`
do
  (cd $dir && make)
done
