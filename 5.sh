#!/bin/bash

arquivo=$1
linhas=$(cat $arquivo | wc -l)

ls $arquivo && ((linhas > 5)) && echo "GOOD"
