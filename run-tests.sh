#!/bin/sh
make clean && make && cd tests/ && python3 ../../tools/morph-test.py -csi bkl.yaml ; python3 ../../tools/morph-test.py -cl bkl.yaml ; echo "\nfinal totals:" ; python3 ../../tools/morph-test.py -csi bkl.yaml | tail -1 ; python3 ../../tools/morph-test.py -cl bkl.yaml | tail -1 && cd ..
