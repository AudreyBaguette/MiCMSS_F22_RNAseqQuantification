#!/bin/bash

# Download the data
xargs -L 1 curl -O -J -L < ../Scripts/fastq_files.txt

# Subset the files to 100 reads (400 lines) and rename the results
zcat ENCFF116ZJP.fastq.gz | head -n 4000 > left_ventricle_34m_1000_rep1_R1.fastq
zcat ENCFF122ILY.fastq.gz | head -n 4000 > left_ventricle_34m_1000_rep1_R2.fastq
zcat ENCFF116ZJP.fastq.gz | head -n 400 > left_ventricle_34m_100_rep1_R1.fastq
zcat ENCFF122ILY.fastq.gz | head -n 400 > left_ventricle_34m_100_rep1_R2.fastq
zcat ENCFF850ZLY.fastq.gz | head -n 4000 > brain_66f_1000_rep1_R1.fastq
zcat ENCFF897IUQ.fastq.gz | head -n 4000 > brain_66f_1000_rep1_R2.fastq