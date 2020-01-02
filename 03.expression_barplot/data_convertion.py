#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2019-04-03 21:58

from __future__ import print_function
import sys

def convert_data(data_file):
    gene_list = []
    organ_list = []
    mean_list = []
    stderr_list = []
    first = True
    with open(data_file) as f:
        for line in f:
            ls = line.split()
            if 'CesA' in line and not gene_list:
                gene_list = ls[1:]
            elif line.strip():
                if len(organ_list) < 10:
                    organ_list.append(ls[0])
                if first:
                    mean_list.append(ls[1:])
                elif 'CesA' not in line:
                    stderr_list.append(ls[1:])
            elif not line.strip():
                first = False
    return gene_list, organ_list, mean_list, stderr_list

def output(gene_list, organ_list, mean_list, stderr_list):
    for n, org in enumerate(mean_list):
        for m, gene in enumerate(org):
            print(gene_list[m], organ_list[n], gene, stderr_list[n][m], sep="\t")

def main():
    gene_list, organ_list, mean_list, stderr_list = convert_data(sys.argv[1])
    output(gene_list, organ_list, mean_list, stderr_list)

if __name__ == '__main__':
    main()
