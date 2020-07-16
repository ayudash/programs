trpv1 <- read.csv("~/Desktop/trpv1.tsv", sep="\t")
trpv1_extract <- trpv1[,c(1,2,15)]
colnames(trpv1_extract) = paste("col", 1:ncol(trpv1_extract), sep = ".")
trpv1_lowq <- subset(trpv1_extract, col.3 < 0.5)
write.table(trpv1_lowq,"~/Desktop/trpv1_lowq.txt", sep = "\t", quote = FALSE, row.names = FALSE)