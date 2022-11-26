#
library(ggplot2)

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

# 2. PCA
## Change the shape of the matrix. We want features (gene counts) to be columns
##   and conditions to be rows
counts_mat <- t(counts_df[,-1])
row.names(counts_mat) <- colnames(counts_df)[-1]
## Log-transform to reduce variation and remove genes with infinite values
counts_mat2 <- log(counts_mat)
counts_mat2 <- counts_mat2[,!apply(counts_mat2, 2, function(x) return(any(is.infinite(x))))]
## PCA and plot
pca <- prcomp(counts_mat2)
age_sex <- unlist(lapply(strsplit(row.names(counts_mat), "_"), function(x) return(x[length(x)])))
tissue <- unlist(lapply(strsplit(row.names(counts_mat), "_"), function(x) return(paste0(x[-length(x)], collapse = "_"))))
ggplot(data.frame(pca$x), aes(PC1, PC2, color = age_sex, shape = tissue)) +
  geom_point()
