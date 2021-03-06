#!/bin/sh
make clean && make && aq-covtest ../ling073-bkl-corpus/bkl.corpus.basic.txt bkl.automorf.bin ; cd tests/ && python3 ../../tools/morph-test.py -csi bkl.yaml ; python3 ../../tools/morph-test.py -cl bkl.yaml ; echo "\nfinal totals:" ; python3 ../../tools/morph-test.py -csi bkl.yaml | tail -1 ; python3 ../../tools/morph-test.py -cl bkl.yaml | tail -1 ; cd .. ; aq-covtest ../ling073-bkl-corpus/bkl.corpus.basic.txt bkl.automorf.bin | sed -n 2p
echo "Tokens in corpus:"
cat ../ling073-bkl-corpus/bkl.corpus.basic.txt | lt-proc bkl.automorf.bin | sed 's/$\W*\^/$\n^/g' | wc -l
echo "Analyses in corpus:"
cat ../ling073-bkl-corpus/bkl.corpus.basic.txt | lt-proc bkl.automorf.bin | sed 's/$\W*\^/$\n^/g' | cut -f2- -d'/' | sed 's/\//\n/g' | wc -l
