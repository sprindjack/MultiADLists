# !/bin/sh

file='Result1.txt'
sort -n $file | uniq
sort -n $file | awk '{if($0!=line)print; line=$0}'
sort -n $file | sed '$!N; /^\(.*\)\n\1$/!P; D'
