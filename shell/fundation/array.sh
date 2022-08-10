#!/bin/bash

# array
files=("test.lua")
files+=("test1.lua")
files+=("test2.lua")


echo '$files[@]:' $files[@]
echo '${files}:' ${files}
echo '${files[@]}:' ${files[@]}
echo '${#files[@]}:' ${#files[@]}


# array foreach
for file in ${files[@]}; do
    echo origin:$file '${file:0:-4}'=${file:0:-4}
done