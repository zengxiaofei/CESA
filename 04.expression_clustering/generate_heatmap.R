#!/usr/bin/env Rscript
library(pheatmap)
mydata <- read.table("CESA.qPCR.stat",header=T,sep="\t")
rownames(mydata) = c(
    "MgCESA2", "MgCESA3", 
    "MgCESA4", "MgCESA5", 
    "MgCESA6", "MgCESA7", 
    "MgCESA8", "MgCESA10", 
    "MgCESA11", "MgCESA12")

annotation_row = data.frame(Groups=factor(rep(c("Primary", "Secondary"), c(7,3))))
rownames(annotation_row) = c(
    "MgCESA2", "MgCESA3", 
    "MgCESA4", "MgCESA5", 
    "MgCESA6", "MgCESA7", 
    "MgCESA8", "MgCESA10", 
    "MgCESA11", "MgCESA12")
annotation_colors=list(Groups=c(
    Primary=rgb(113,227,142,max=255), 
    Secondary=rgb(227,193,113,max=255)))
pheatmap(
    log2(mydata), cluster_col=F, 
    display_numbers=T, number_format="%.2f", 
    border_color=NA, cellwidth=50, cellheight=25,
    annotation_row=annotation_row, 
    annotation_colors=annotation_colors, 
    filename="heatmap.pdf")
