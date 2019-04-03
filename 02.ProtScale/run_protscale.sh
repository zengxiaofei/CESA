#!/bin/bash

# Author: Xiaofei Zeng
# Email: xiaofei_zeng@whu.edu.cn
# Created Time: 2017-10-02 09:35

aln=CESA.withstar.pep.aln
proscale=Kyte_Doolittle.txt
stat=CESA.pep.hydro

./protscale.py ${aln} ${proscale} > ${stat}
