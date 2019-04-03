#!/bin/bash

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2017-10-01 20:53

pep=CESA.withstar.pep
cds=CESA.withstar.cds

mafft --maxiterate 1000 --localpair --clustalout ${pep} > ${pep}.aln
pal2nal.pl ${pep}.aln ${cds} > ${cds}.aln
./calculate_pid.py ${pep}.aln > ${pep}.pid
./calculate_pid.py ${cds}.aln > ${cds}.pid
