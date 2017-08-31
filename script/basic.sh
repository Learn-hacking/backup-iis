#!/bin/bash
export a=30
export b=15
export c=2
export d=5
echo `expr $a \* \($b + $c\) / $d`
echo `expr $a + $b`
echo `expr $a / $b`
echo `expr $a % $b`
echo `expr $a - $b`
echo `expr $a \* $b`
