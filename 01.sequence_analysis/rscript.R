#!/usr/bin/env Rscript
library(ggplot2)
pdf(width=12, height=6)
ggplot()+xlim(0, 1135)+ylim(0, 7)+
    annotate("rect",xmin=0,xmax=1135,ymin=0.98,ymax=1.02,fill="black")+
    annotate("rect",xmin=0,xmax=24,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=27,xmax=119,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=124,xmax=130,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=138,xmax=141,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=144,xmax=147,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=148,xmax=159,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=170,xmax=198,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=208,xmax=265,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=268,xmax=274,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=276,xmax=279,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=280,xmax=688,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=695,xmax=720,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=722,xmax=725,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=729,xmax=732,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=733,xmax=755,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=757,xmax=1134,ymin=0.7,ymax=1.3,fill="lightgrey")+
    annotate("rect",xmin=0,xmax=1135,ymin=1.98,ymax=2.02,fill="black")+
    annotate("rect",xmin=0,xmax=11,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=13,xmax=24,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=27,xmax=29,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=30,xmax=120,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=121,xmax=130,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=138,xmax=142,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=143,xmax=147,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=148,xmax=159,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=170,xmax=198,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=208,xmax=265,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=268,xmax=274,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=276,xmax=279,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=280,xmax=688,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=695,xmax=720,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=722,xmax=725,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=729,xmax=732,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=733,xmax=755,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=757,xmax=1134,ymin=1.7,ymax=2.3,fill="lightgrey")+
    annotate("rect",xmin=0,xmax=1135,ymin=2.98,ymax=3.02,fill="black")+
    annotate("rect",xmin=0,xmax=1,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=22,xmax=24,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=27,xmax=29,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=30,xmax=142,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=143,xmax=181,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=182,xmax=200,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=202,xmax=210,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=211,xmax=217,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=224,xmax=235,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=236,xmax=694,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=703,xmax=725,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=729,xmax=732,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=733,xmax=1122,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=1123,xmax=1134,ymin=2.7,ymax=3.3,fill="lightgrey")+
    annotate("rect",xmin=0,xmax=1135,ymin=3.98,ymax=4.02,fill="black")+
    annotate("rect",xmin=0,xmax=1,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=22,xmax=29,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=30,xmax=142,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=143,xmax=147,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=148,xmax=181,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=182,xmax=194,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=195,xmax=200,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=202,xmax=217,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=224,xmax=235,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=236,xmax=253,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=254,xmax=688,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=689,xmax=694,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=703,xmax=721,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=722,xmax=725,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=729,xmax=732,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=733,xmax=1122,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=1123,xmax=1134,ymin=3.7,ymax=4.3,fill="lightgrey")+
    annotate("rect",xmin=0,xmax=1135,ymin=4.98,ymax=5.02,fill="black")+
    annotate("rect",xmin=0,xmax=24,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=27,xmax=28,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=30,xmax=120,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=123,xmax=147,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=148,xmax=151,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=152,xmax=159,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=170,xmax=181,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=182,xmax=189,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=192,xmax=256,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=257,xmax=261,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=268,xmax=275,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=276,xmax=277,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=282,xmax=688,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=689,xmax=732,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=733,xmax=755,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=757,xmax=1017,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=1018,xmax=1122,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=1123,xmax=1135,ymin=4.7,ymax=5.3,fill="lightgrey")+
    annotate("rect",xmin=0,xmax=1135,ymin=5.98,ymax=6.02,fill="black")+
    annotate("rect",xmin=0,xmax=24,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=27,xmax=28,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=30,xmax=120,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=124,xmax=147,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=148,xmax=151,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=152,xmax=159,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=170,xmax=181,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=182,xmax=189,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=192,xmax=256,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=257,xmax=261,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=268,xmax=274,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=276,xmax=277,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=282,xmax=688,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=689,xmax=717,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=719,xmax=755,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=757,xmax=1017,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=1018,xmax=1122,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=1123,xmax=1135,ymin=5.7,ymax=6.3,fill="lightgrey")+
    annotate("rect",xmin=43,xmax=89,ymin=0.7,ymax=1.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=124,xmax=130,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=138,xmax=141,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=144,xmax=147,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=148,xmax=159,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=170,xmax=198,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=208,xmax=265,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=268,xmax=274,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=276,xmax=279,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=280,xmax=292,ymin=0.7,ymax=1.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=0.7,ymax=1.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=688,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=695,xmax=720,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=722,xmax=725,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=729,xmax=732,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=733,xmax=755,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=757,xmax=799,ymin=0.7,ymax=1.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=0.7,ymax=1.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=0.7,ymax=1.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=0.7,ymax=1.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=0.7,ymax=1.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=0.7,ymax=1.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=43,xmax=89,ymin=1.7,ymax=2.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=119,xmax=120,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=121,xmax=130,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=138,xmax=142,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=143,xmax=147,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=148,xmax=159,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=170,xmax=198,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=208,xmax=265,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=268,xmax=274,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=276,xmax=279,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=280,xmax=292,ymin=1.7,ymax=2.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=1.7,ymax=2.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=688,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=695,xmax=720,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=722,xmax=725,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=729,xmax=732,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=733,xmax=755,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=757,xmax=799,ymin=1.7,ymax=2.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=1.7,ymax=2.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=1.7,ymax=2.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=1.7,ymax=2.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=1.7,ymax=2.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=1.7,ymax=2.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=43,xmax=89,ymin=2.7,ymax=3.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=119,xmax=142,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=143,xmax=181,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=182,xmax=200,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=202,xmax=210,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=211,xmax=217,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=224,xmax=235,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=236,xmax=292,ymin=2.7,ymax=3.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=2.7,ymax=3.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=694,ymin=2.7,ymax=3.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=703,xmax=725,ymin=2.7,ymax=3.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=729,xmax=732,ymin=2.7,ymax=3.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=733,xmax=799,ymin=2.7,ymax=3.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=2.7,ymax=3.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=2.7,ymax=3.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=2.7,ymax=3.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=2.7,ymax=3.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=2.7,ymax=3.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=43,xmax=89,ymin=3.7,ymax=4.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=119,xmax=142,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=143,xmax=147,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=148,xmax=181,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=182,xmax=194,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=195,xmax=200,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=202,xmax=217,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=224,xmax=235,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=236,xmax=253,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=254,xmax=292,ymin=3.7,ymax=4.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=3.7,ymax=4.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=688,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=689,xmax=694,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=703,xmax=721,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=722,xmax=725,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=729,xmax=732,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=733,xmax=799,ymin=3.7,ymax=4.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=3.7,ymax=4.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=3.7,ymax=4.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=3.7,ymax=4.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=3.7,ymax=4.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=3.7,ymax=4.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=43,xmax=89,ymin=4.7,ymax=5.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=119,xmax=120,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=123,xmax=147,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=148,xmax=151,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=152,xmax=159,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=170,xmax=181,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=182,xmax=189,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=192,xmax=256,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=257,xmax=261,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=268,xmax=275,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=276,xmax=277,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=282,xmax=292,ymin=4.7,ymax=5.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=4.7,ymax=5.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=688,ymin=4.7,ymax=5.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=689,xmax=732,ymin=4.7,ymax=5.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=733,xmax=755,ymin=4.7,ymax=5.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=757,xmax=799,ymin=4.7,ymax=5.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=4.7,ymax=5.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=4.7,ymax=5.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=4.7,ymax=5.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=4.7,ymax=5.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=4.7,ymax=5.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=43,xmax=89,ymin=5.7,ymax=6.3,fill=rgb(102,194,165,max=255))+
    annotate("rect",xmin=119,xmax=120,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=124,xmax=147,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=148,xmax=151,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=152,xmax=159,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=170,xmax=181,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=182,xmax=189,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=192,xmax=256,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=257,xmax=261,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=268,xmax=274,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=276,xmax=277,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=282,xmax=292,ymin=5.7,ymax=6.3,fill=rgb(252,141,98,max=255))+
    annotate("rect",xmin=436,xmax=561,ymin=5.7,ymax=6.3,fill=rgb(141,160,203,max=255))+
    annotate("rect",xmin=683,xmax=688,ymin=5.7,ymax=6.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=689,xmax=717,ymin=5.7,ymax=6.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=719,xmax=755,ymin=5.7,ymax=6.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=757,xmax=799,ymin=5.7,ymax=6.3,fill=rgb(231,138,195,max=255))+
    annotate("rect",xmin=432,xmax=435,ymin=5.7,ymax=6.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=599,xmax=602,ymin=5.7,ymax=6.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=830,xmax=833,ymin=5.7,ymax=6.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=870,xmax=875,ymin=5.7,ymax=6.3,fill=rgb(166,216,84,max=255))+
    annotate("rect",xmin=309,xmax=332,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=338,xmax=358,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=908,xmax=931,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=942,xmax=965,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=972,xmax=1002,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1026,xmax=1050,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1059,xmax=1082,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    annotate("rect",xmin=1096,xmax=1112,ymin=5.7,ymax=6.3,fill=rgb(255,217,47,max=255))+
    theme_bw()+
    theme(panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),
        panel.border=element_blank(),
        axis.text=element_blank(),
        axis.ticks=element_blank())
dev.off()
