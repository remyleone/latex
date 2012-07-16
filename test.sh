#!/bin/sh

for dir in article book cover report-empty resume slide thesis tpnote
do
  (cd $dir && echo "=>" $dir && make)
done
