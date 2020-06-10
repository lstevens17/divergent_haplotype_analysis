#!/usr/bin/env Rscript

# load libraries
library(gplots)

args = commandArgs(trailingOnly=TRUE)

# read in file
aa_dist <- read.table(args[1], row.names = 1)

# convert to matrix
aa_dist_m <- as.matrix(aa_dist)

# add col names
colnames(aa_dist_m) <- rownames(aa_dist_m)

# create plot file
png(file=paste(args[1], ".png", sep = ""), width = 1000, height = 1000, units = "px")

# set color palette 
hmcols<-colorRampPalette(c("red","blue"))(51)

# plot heatmap 
heatmap.2(aa_dist_m, col=hmcols, density.info="none", trace="none", breaks=c(seq(94.9,100,0.1)), key=FALSE, margins = c(13, 13))

dev.off()
