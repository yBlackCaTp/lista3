#!/bin/bash


arquivo1=$1
arquivo2=$2
arquivo3=$3


linhas1=$(cat $arquivo1 | wc -l)
linhas2=$(cat $arquivo2 | wc -l)
linhas3=$(cat $arquivo3 | wc -l)

echo $linhas1 > temp.txt
echo $linhas2 >> temp.txt
echo $linhas3 >> temp.txt

cat temp.txt | sort -n > lista_ordenada.txt

primeiro=$(sed -n '1p' < lista_ordenada.txt)
segundo=$( sed -n '2p' < lista_ordenada.txt)
terceiro=$(sed -n '3p' < lista_ordenada.txt)

rm temp.txt lista_ordenada.txt

($primeiro == $linhas1) && echo $arquivo1
($primeiro == $linhas2) && echo $arquivo2
($primeiro == $linhas3) && echo $arquivo3

($segundo == $linhas1) && echo $arquivo1
($segundo == $linhas2) && echo $arquivo2
($segundo == $linhas3) && echo $arquivo3

($terceiro == $linhas1) && echo $arquivo1
($terceiro == $linhas2) && echo $arquivo2
($terceiro == $linhas3) && echo $arquivo3
