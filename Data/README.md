# Quantification of RNA-seq reads - Data

## FASTQ files
* left_ventricle_34m_100_rep1_R1.fastq
* left_ventricle_34m_100_rep1_R2.fastq
* brain_66f_100_rep1_R1.fastq
* brain_66f_100_rep1_R2.fastq
The FASTQ files come from two different studies, on ENCODE. The first one is RNA-seq data from a human heart left ventricle (male, 34 years https://www.encodeproject.org/experiments/ENCSR769LNJ/) and the second is RNA-seq data from a human brain (female, 66 years https://www.encodeproject.org/experiments/ENCSR274JRR/).

The paired files for the first two technical replicates of each sample were downloaded, subsetted and renamed. The commands used to download and transform the files are included in `Scripts/fastq_download.sh`.

## Raw count files