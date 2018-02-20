#!/bin/sh
make clean
make
cd tests/
python3 ../../tools/morph-test.py -csi bkl.yaml
cd ..
