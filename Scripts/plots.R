#
library(ggplot2)

# 1. Load and transform the data
load("../Data_solutions/tteTest.Rda")
tteTest$table$neg_log10_FDR <- -log10(tteTest$table$FDR)
tteTest$table$Interesting_gene <- (abs(tteTest$table$logFC) > 4) & (tteTest$table$FDR < 0.05)


# 2. Volcano plot
volcano_plot <- ggplot(tteTest$table, aes(logFC, neg_log10_FDR)) +
  geom_point() +
  xlab("log2(FC)") +
  ylab("-log10(FDR)") +
  ggtitle("volcano plot") +
  theme(legend.position = "none")
volcano_plot

volcano_plot2 <- ggplot(tteTest$table, aes(logFC, neg_log10_FDR)) +
  geom_point(aes(color = Interesting_gene)) +
  xlab("log2(FC)") +
  ylab("-log10(FDR)") +
  ggtitle("volcano plot") +
  theme(legend.position = "none") +
  scale_color_manual(values = c("FALSE" = "grey", "TRUE" = "red")) +
  geom_text(data = tteTest$table[(tteTest$table$FDR < 10^(-20)) & (abs(tteTest$table$logFC) > 7), ], aes(label = genes), size = 2, hjust = -0.1)
volcano_plot2


# 3. MA plot
MA_plot <- ggplot(tteTest$table) +
  geom_point(aes(logCPM, logFC)) +
  xlab("Mean of normalized counts (log2)") +
  ylab("Fold-change of the mean normalized counts (log2)") +
  ggtitle("MA plot")
MA_plot

MA_plot2 <- ggplot(tteTest$table) +
  geom_point(aes(logCPM, logFC, color = FDR < 0.005)) +
  xlab("Mean of normalized counts (log2)") +
  ylab("Fold-change of the mean normalized counts (log2)") +
  scale_color_manual("Significant", values = c("FALSE" = "black", "TRUE" = "red", "NA" = "grey")) +
  geom_hline(aes(yintercept = 2), linetype = "dashed") +
  geom_hline(aes(yintercept = -2), linetype = "dashed") +
  ggtitle("MA plot")
MA_plot2
#
