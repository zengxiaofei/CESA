#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2017-10-01 21:55

"""
a script to calculate pairwise percent 
identity from a clustal .aln file
"""
from __future__ import print_function
import argparse
import collections
import re

def aln_to_dict(aln_file):
    """convert .aln file to a dictionary"""
    seq_dict = collections.OrderedDict()
    with open(aln_file) as fin:
        if not fin.readline().startswith('CLUSTAL'):
            raise TypeError('Input may be not a clustal alignment!')
        for line in fin:
            if line[0].strip():
                lsp = line.split()
                if lsp[0] in seq_dict:
                    seq_dict[lsp[0]] += lsp[1]
                else:
                    seq_dict[lsp[0]] = lsp[1]
    print(len(seq_dict['MgCESA2']))
    return seq_dict

def get_margin(seq, margin_list):
    margin = re.search(r'[^-]+', seq)
    if margin:
        ms = margin.span()
        margin_list.append((ms[0]+1, ms[1]))
        end = margin_list[-1][-1]
        margin_list = get_margin(end*'-' + seq[end:], margin_list)
    else:
        return margin_list

def get_intersection(bar_dict, domain_list):
    domain_dict = collections.OrderedDict()
    for ID, margin_list in bar_dict.iteritems():
        domain_dict[ID] = []
        for domain in domain_list:
            domain_dict[ID].append([])
            for site in domain:
                for margin in margin_list:
                    # no overlap:
                    if margin[1] < site[0] or margin[0] > site[1]:
                        continue
                    else:
                        domain_dict[ID][-1].append(
                                sorted([max(margin[0], site[0]), min(margin[1], site[1])]))
    return domain_dict

def R_prepare(seq_dict):
    bar_dict = collections.OrderedDict()
    for ID, seq in seq_dict.iteritems():
        margin_list = []
        get_margin(seq, margin_list)
        bar_dict[ID] = margin_list
    domain_list = [[(44,89)], # Zinc-finger
                  [(120,292)], # HVR-1
                  [(437,561)], # P-CR
                  [(684,799)], # HVR-II
                  [(433,435), (600,602), (831,833), (871,875)], # DDG,DCD,TED,QVLRW
                  [(310,332), (339,358), (909,931), (943,965),
                   (973,1002), (1027,1050), (1060,1082), (1097,1112)]] # TMH
    domain_dict = get_intersection(bar_dict, domain_list)
    return bar_dict, domain_dict

def generate_R(R_file, seq_dict, bar_dict, domain_dict):
    seq_num = len(seq_dict)
    align_len = len(seq_dict.values()[0])
    with open(R_file, 'w') as f:
        f.write('#!/usr/bin/env Rscript\n')
        f.write('library(ggplot2)\n')
        f.write('pdf()\n')
        command = 'p1 <- ggplot()+xlim(0, {0})+ylim(0, {1})'.format(align_len, seq_num+1)
        for y, margin_list in enumerate(bar_dict.itervalues(),1):
            command += '+\n    annotate("rect",xmin=0,xmax=1135,ymin={0},ymax={1},fill="black")'.format(y-0.02,y+0.02)
            for margin in margin_list:
                command += '+\n    annotate("rect",xmin={0},xmax={1},ymin={2},ymax={3},fill="lightgrey")'.format(
                        margin[0]-1, margin[1], y-0.3, y+0.3)
        color_list=["rgb(102,194,165,max=255)",
                    "rgb(252,141,98,max=255)",
                    "rgb(141,160,203,max=255)",
                    "rgb(231,138,195,max=255)",
                    "rgb(166,216,84,max=255)",
                    "rgb(255,217,47,max=255)"]
        for y, domain_list in enumerate(domain_dict.itervalues(),1):
            for x, domain in enumerate(domain_list):
                for site in domain:
                    command += '+\n    annotate("rect",xmin={0},xmax={1},ymin={2},ymax={3},fill={4})'.format(
                           site[0]-1, site[1], y-0.3, y+0.3, color_list[x])
        command += '+\n    theme_bw()'
        command += '+\n    theme(panel.grid.major=element_blank(),'
        command += '\n        panel.grid.minor=element_blank(),'
        command += '\n        panel.border=element_blank(),'
        command += '\n        axis.text=element_blank(),'
        command += '\n        axis.ticks=element_blank())'
        f.write('{0}\n'.format(command))
        f.write('dev.off()\n')

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('aln', help='input clustal .aln file')
    parser.add_argument('rscript', help='output rscript file')
    args = parser.parse_args()

    seq_dict = aln_to_dict(args.aln)
    bar_dict, domain_dict = R_prepare(seq_dict)
    generate_R(args.rscript, seq_dict, bar_dict, domain_dict)

if __name__ == '__main__':
    main()
