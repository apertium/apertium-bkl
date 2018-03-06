#!/bin/sh
make clean && make && cat ../ling073-bkl-corpus/bkl.corpus.basic.txt | apertium -d . bkl-disam
