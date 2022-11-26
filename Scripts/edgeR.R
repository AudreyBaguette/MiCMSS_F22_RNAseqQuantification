#
library(edgeR)

# 1. Read the files
counts_files <- list.files("../Data", pattern = ".tsv")
counts_df <- NULL
for (file in counts_files){
  counts <- read.table(paste0("../Data/", file), header = TRUE)[,c("gene_id", "posterior_mean_count")]
  colnames(counts)[2] <- sub(".tsv", "", file)
  if (is.null(counts_df)){
    counts_df <- counts
  } else {
    counts_df <- merge(counts_df, counts)
  }
}
## Remove rows with all 0 counts
counts_df <- counts_df[rowSums(counts_df[,-1]) != 0,]

# 2. Prepare the groups and filter by expression
## Exclude right_cardiac_atrium
counts_df_subset <- counts_df[,-grep("right_cardiac_atrium", colnames(counts_df))]

## Create a factor specifying the group of each sample. It should be in the same
##   order as the columns of the object
groups <- #complete
design <- model.matrix(~groups)
design

## Create the DGE object
DGE <- DGEList(counts_df_subset[,-1], group = groups, genes = counts_df_subset[,1])
keep <- filterByExpr(DGE)
DGE <- DGE[keep,,keep.lib.sizes=FALSE]

# 3. Calculate the normalization factors and estimate the dispersion
## What sample(s) had the strongest problem of having a few genes monopolizing the reads?
DGE <- calcNormFactors(DGE)
DGE$samples

DGE <- estimateDisp(DGE,design)

# 4. Fitting and testing
## Choose the appropriate function(s)
test <- #complete
n_genes <- nrow(DGE$counts)
tt <- topTags(test, n_genes, p.value = 0.05)

## Optional: test the other functions and compare the results


#
