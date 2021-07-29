#!/bin/bash

mkdir d1
mkdir d2
mkdir d3
mkdir d4
array_1=(d1 d2 d3 d4)

text_file() {
        touch "random.txt"
        touch "random2.txt"
        touch "random3.txt"
        touch "random4.txt"
}

text_file

mv random.txt d1
mv random2.txt d2
mv random3.txt d3
mv random4.txt d4


