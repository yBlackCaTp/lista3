
#!/bin/bash

dir1=$1
dir2=$2
dir3=$3


arq1=$(ls $dir1 | wc -l)
arq2=$(ls $dir2 | wc -l)
arq3=$(ls $dir3 | wc -l)

echo $arq1 > temp.txt
echo $arq2 >> temp.txt
echo $arq3 >> temp.txt

cat temp.txt | sort -n > lista.txt

primeiro=$(sed -n '1p' < lista.txt)
segundo=$(sed -n '2p' < lista.txt)
terceiro=$(sed -n '3p' < lista.txt)

rm temp.txt lista.txt

($primeiro == $arq1) && echo $dir1
($primeiro == $arq2) && echo $dir2
($primeiro == $arq3) && echo $dir3

($segundo == $arq1) && echo $dir1
($segundo == $arq2) && echo $dir2
($segundo == $arq3) && echo $dir3

($terceiro == $arq1) && echo $dir1
($terceiro == $arq2) && echo $dir2
($terceiro == $arq3) && echo $dir3
