#!/usr/bin/env Rscript

library(ggplot2)
args <- commandArgs(T)
md <- read.table(args[1], sep="\t", header=F)
md$V1 <- factor(md$V1, levels=c(
    "MgCesA2", "MgCesA3", "MgCesA4", "MgCesA5", 
    "MgCesA6", "MgCesA7", "MgCesA8", "MgCesA10", 
    "MgCesA11", "MgCesA12"))
md$V2 <- factor(md$V2, levels=c(
    "L1", "L3", "L5", "IN12", "IN34", "IN56", 
    "N", "R","B", "S"))

pdf("barplot.pdf", width=12, height=6)
ggplot(
    md, aes(x=V2, y=V3)) + 
    geom_bar(aes(fill=V2),stat="identity", color="black") + 
    geom_errorbar(aes(ymax=V3+V4, ymin=V3-V4), width=0.5) + 
    scale_fill_brewer(palette="Set3") + 
    facet_wrap(~V1, scales="free", nrow=2) + 
    theme_bw() + 
    theme(
        axis.ticks.x=element_blank(), 
        axis.text.x=element_blank(), 
        strip.text=element_text(face = "italic")) + 
    labs(x="", y="Relative expression levels", fill = "Organs")
dev.off()
