#!/bin/bash
#Usage: sh tabix_loop.sh <path to input files>
#lmc297@cornell.edu
cd $1

for f in *.vcf.gz
do
tabix -p vcf ./$f
done
