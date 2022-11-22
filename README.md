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
* Galaxy (https://usegalaxy.org/)
R should be installed on your machine, ideally with an interpreter (RStudio or Jupyter Notebook) and with the edgeR package. 
fastqc is installed on the Mammouth node (see https://github.com/AudreyBaguette/MiCMSS_F22_IntroRNAseqFormats to connect) and Galaxy is a web-based tool.

## Data
The data we will use in this workshop comes from ENCODE and has been processed with the GenPipes pipeline (https://genpipes.readthedocs.io/en/latest/user_guide/pipelines/gp_rnaseq.html). All necessary files are in the data folder.

## Outline
* Introduction (5 min)
    - What does bulk RNA-seq measure?
    - What are the limitations of bulk RNA-seq?

* Overview of the preprocessing steps (35 min) 
    - From FASTQ files to raw read counts: what does each step mean?
    - Fastqc and Galaxy
    - Quality Control report: what should be flagged?
    - Hands on: run a QC analysis amd interpret the results (15 min) 

* Normalization (15 min) 
    - Why do we normalize?
    - Common normalization techniques
    - Normalization in differential gene expression analysis
    - Hands on: identify the appropriate normalization depending on the analysis (5 min) 

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
