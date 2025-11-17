#!/bin/bash

myArrays=(1 2 3 Hello "Hey man")

echo "${myArrays[0]}"

echo "${myArrays[3]}"

echo "${myArrays[*]}"

#Length of Array

echo "${#myArrays[@]}"

#How to get specific values

echo "${myArrays[*]:0:1}"


#Update Arry

myArrays+=("New Value")

echo ${myArrays[*]}