#!/bin/bash

for ((i=0; i<=$#; i++)); do
  echo "parameter $i --> ${!i}"
done




##### avvio ./test.sh "ciau bellu" "chi sei" "pdor figlio di kmer della tribù instar"