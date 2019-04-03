#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2017-10-01 21:55

from __future__ import print_function
import argparse
import collections

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
    return seq_dict

def get_hydro(protscale):
    hydro_dict = {'-' : 0}
    with open(protscale) as fps:
        for line in fps:
            if line.strip():
                lsp = line.split()
                hydro_dict[lsp[0]] = float(lsp[1])
    return hydro_dict

def hydro_stat(seq_dict, hydro_dict):
    for ID, seq in seq_dict.iteritems():
        for n, aa in enumerate(seq, 1):
            print('{0}\t{1}\t{2}'.format(ID, n, hydro_dict[aa]))

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('aln', 
                        help='input clustal .aln file')
    parser.add_argument('protscale', 
                        help='a table showing amino acids '
                             'and corresponding hydrophilicities')
    args = parser.parse_args()

    seq_dict = aln_to_dict(args.aln)
    hydro_dict = get_hydro(args.protscale)
    hydro_stat(seq_dict, hydro_dict)

if __name__ == '__main__':
    main()
