#!/bin/bash
export a="Hello Friends"
export b=" Welcome to the Coading class"
export c=$a$b
echo $a
echo ${#a}
echo $b
echo ${#b}
echo $c
echo ${#c}
echo ${b:8}
echo ${b: -6:5}
