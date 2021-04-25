#!/bin/bash

for file in `ls -1 *.pgm`
do
echo "compute lsd : $file"
./lsd -P ./lsd0/"${file%.pgm}_lsd.eps" $file ./lsd0/"${file%.pgm}.txt"
convert ./lsd0/"${file%.pgm}_lsd.eps" ./lsd0/"${file%.pgm}_lsd.pgm"
done

