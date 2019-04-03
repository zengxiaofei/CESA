#!/usr/bin/env Rscript
library(ggplot2)

pdf(height=6, width=15)
mydata <- read.table("CESA.pep.hydro")
ggplot(mydata, aes(x=V2, y=V3)) + 
    annotate("rect", xmin=44, xmax=89, ymin=-5, ymax=5, alpha=.6, fill=rgb(102,194,165,maxColorValue=255)) + 
    annotate("rect", xmin=120, xmax=292, ymin=-5, ymax=5, alpha=.6, fill=rgb(252,141,98,maxColorValue=255)) + 
    annotate("rect", xmin=437, xmax=561, ymin=-5, ymax=5, alpha=.6, fill=rgb(141,160,203,maxColorValue=255)) + 
    annotate("rect", xmin=684, xmax=799, ymin=-5, ymax=5, alpha=.6, fill=rgb(231,138,195,maxColorValue=255)) + 
    annotate("rect", xmin=433, xmax=435, ymin=-5, ymax=5, alpha=.6, fill=rgb(166,216,84,maxColorValue=255)) + 
    annotate("rect", xmin=600, xmax=602, ymin=-5, ymax=5, alpha=.6, fill=rgb(166,216,84,maxColorValue=255)) + 
    annotate("rect", xmin=831, xmax=833, ymin=-5, ymax=5, alpha=.6, fill=rgb(166,216,84,maxColorValue=255)) + 
    annotate("rect", xmin=871, xmax=875, ymin=-5, ymax=5, alpha=.6, fill=rgb(166,216,84,maxColorValue=255)) + 
    annotate("rect", xmin=310, xmax=332, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=339, xmax=358, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=909, xmax=931, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=943, xmax=965, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=973, xmax=1002, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=1027, xmax=1050, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=1060, xmax=1082, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    annotate("rect", xmin=1097, xmax=1112, ymin=-5, ymax=5, alpha=.6, fill=rgb(255,217,47,maxColorValue=255)) + 
    geom_smooth(aes(color=V1), method="loess", span=0.05, alpha=0.1)+ scale_color_brewer(palette="Set3") + 
    xlab("Position in the alignment") + ylab("Hydropathicity") +
    guides(color=guide_legend(title="Proteins")) +
    theme_bw()
dev.off()
