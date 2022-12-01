# Quantification of RNA-seq reads

## Overview
The goal of this workshop is to go over the different steps of RNA sequencing and differential gene expression analysis. We will first look at the quality control steps and flags of RNA-seq reads and how read counts are normalized. In the second part, we will use edgeR to do a differentially expressed genes analysis and look at commonly used plots to represent the results. 
   
## Requirements
Basic knowledge of R is required. You need to know how to read files in R, how to create objects and the basic commands.
   
## Software
During this workshop, we will use the following softwares and packages:
* R
* RStudio or Jupyter Notebook
* edgeR
* fastqc
* MultiQC
* Galaxy (https://usegalaxy.org/)
R should be installed on your machine, ideally with an interpreter (RStudio or Jupyter Notebook) and with the edgeR package. 
fastqc and MultiQC are installed on the Mammouth node (see https://github.com/AudreyBaguette/MiCMSS_F22_IntroRNAseqFormats to connect) and Galaxy is a web-based tool.

## Data
* left_ventricle_34m_100_rep1_R1.fastq
* left_ventricle_34m_100_rep1_R2.fastq
* left_ventricle_34m_1000_rep1_R1.fastq
* left_ventricle_34m_1000_rep1_R2.fastq
* brain_66f_1000_rep1_R1.fastq
* brain_66f_1000_rep1_R2.fastq
* left_ventricle_34m.tsv
* left_ventricle_3m.tsv
* right_cardiac_atrium_34m.tsv
* right_ventricle_34m.tsv
* right_ventricle_3m.tsv

The data we will use in this workshop comes from ENCODE and has been processed by their pipelines. All necessary files are in the Data folder, on the server. They are also included in the Data folder of the repository. The details on how to download them from ENCODE is also included in the Scripts folder.

You can put the data in your space on the server with one of these 3 ways:
* The easy ways
1. Copy the files from my folder to yours `cp -R /home/aubag1/MiCMSS_F22_RNAseqQuantification/Data .`

OR
2. Clone the repository.

* The "hard" way, if you want a bit of a challenge.
Clone the git repository in the server. Download the data directly on the server, following the instructions in the README file of the Data folder.

## Outline
* Introduction (5 min)
    - What does bulk RNA-seq measure?
    - What are the limitations of bulk RNA-seq?

* Overview of the preprocessing steps (35 min) 
    - From FASTQ files to raw read counts: what does each step mean?
    - Fastqc
    - Galaxy
    - Quality Control report: what should be flagged?
    - Hands on: run a QC analysis amd interpret the results (15 min) 

* Normalization (15 min) 
    - Why do we normalize?
    - Common normalization techniques
    - Normalization in differential gene expression analysis
    - Hands on: identify the appropriate model depending on the analysis (5 min) 

**Lunch break**

* EdgeR (45 min)
    - Steps to do a differential gene expression analysis
    - Choosing the appropriate fitting and testing function
    - Extracting the results
    - Hands on: produce a DEG analysis, with the appropriate fitting and testing functions (10 min) 

* Interpreting common plots (10 min)
    - Volcano plots
    - MA plots
    - Hands on: identify the most interesting genes in the plots (5 min)

## References
   
*Workshop created as part of the McGill Initiative in Computational Medicine*
