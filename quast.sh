#!/bin/bash
#Usage: sh quast.sh <path to input files>
#jk2739@cornell.edu

cd $1

mkdir quast_results

for f in *.fasta
do
python quast.py -o ./quast_results/quast_${f%_contigs.fasta} --min-contig 1 $f
done

mkdir quast_reports
for f in *.fasta
do
cd quast_${f%_contigs.fasta}
cat report.txt > ${f%_contigs.fasta}_report.txt
cp ${f%_contigs.fasta}_report.txt ../quast_reports
cd ..
done
