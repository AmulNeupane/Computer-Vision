Steps in batch processing

1. create a bash script: lsd_call.sh

# how?

nano lsd_call.sh (it means, we open it)

it contains:


#!/bin/bash

for file in `ls -1 *.pgm`
do
echo "compute lsd : $file"
./lsd -P ./lsd0/"${file%.pgm}_lsd.eps" $file ./lsd0/"${file%.pgm}.txt"
convert ./lsd0/"${file%.pgm}_lsd.eps" ./lsd0/"${file%.pgm}_lsd.pgm"
done

# this bash script enables you to run “lsd file” for all pgm files within that directory and store the outputs into another directory named “lsd0”.

it means, you need to create a directory by using the following command: mkdir lsd0 

# there are 3 different versions of the output from a single input image: eps, pgm and txt.



2. Make lsd_call.sh executable.

# How?

chmod +x lsd_call.sh

3. Run the bash script.

# How?

./lsd_call.sh

Example:
line_segments santosh.kc$ ./lsd_call.sh
compute lsd : 1471-2474-12-251-4.pgm
compute lsd : 1471-2474-7-36-1.pgm
compute lsd : 1471-2474-7-59-1.pgm

…











