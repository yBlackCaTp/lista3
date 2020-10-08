#!/bin/bash

read -p "3 nomes de arq:" arquivo1 arquivo2 arquivo3

linhas1=$(cat $arquivo1 | wc -l)
linhas2=$(cat $arquivo2 | wc -l)
linhas3=$(cat $arquivo3 | wc -l)

($linhas1 > $linhas2) && (($linhas1 > $linhas2)) && echo $arquivo1
($linhas2 > $linhas1) && (($linhas2 > $linhas3)) && echo $arquivo2
($linhas3 > $linhas1) && (($linhas3 > $linhas2)) && echo $arquivo3
