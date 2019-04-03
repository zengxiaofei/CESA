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
import itertools

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

def calculate_pairwise_pid(seq_dict):
    """calculate pairwise percent identity"""
    pid_dict = {}
    for qid, sid in itertools.combinations(seq_dict, 2):
        # verify the length of alignment
        if len(seq_dict[qid]) != len(seq_dict[sid]):
            raise ValueError('The alignment of {0} and {1} does not '
                    'have the same length!'.format(qid, sid))
        alignment, match = 0, 0
        for n in xrange(len(seq_dict[qid])):
            if seq_dict[qid][n] == seq_dict[sid][n] == '-':
                continue
            elif seq_dict[qid][n] == seq_dict[sid][n]:
                alignment += 1
                match += 1
            else:
                alignment += 1
        pid = float(match)/alignment*100 
        pid_dict['{0}_{1}'.format(qid, sid)] = round(pid, 2)
    return pid_dict

def output_matrix(seq_dict, pid_dict):
    print('PID\t'+'\t'.join(seq_dict.iterkeys()))
    for sid in seq_dict:
        print(sid, end='')
        for qid in seq_dict:
            k = '{0}_{1}'.format(qid, sid)
            print('\t', end='')
            if k in pid_dict:
                print(pid_dict[k], end='')
            else:
                print('-', end='')
        print()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('aln', help='input clustal .aln file')
    args = parser.parse_args()

    seq_dict = aln_to_dict(args.aln)
    pid_dict = calculate_pairwise_pid(seq_dict)
    output_matrix(seq_dict, pid_dict)

if __name__ == '__main__':
    main()
