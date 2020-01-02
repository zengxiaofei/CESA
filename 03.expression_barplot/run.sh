#!/bin/bash

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2020-01-02 17:00

./data_convertion.py exp_data.txt > barplot_data.txt
./draw_barplot.R barplot_data.txt
