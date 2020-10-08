#!/bin/bash

($(id -u) == 0) && echo "erro: usuário root" && exit 1 || echo "ok"

#7 Questão 
