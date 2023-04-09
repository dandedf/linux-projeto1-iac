#!/bin/bash

echo "Início do Script para remoção de Diretórios, Usuários e Grupos"

echo "Excluindo os diretórios:"

rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec

echo "Excluindo os usuários:"

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Excluindo os grupos:"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Fim do Script de Remoção de Diretórios, Usuários e Grupos !!!"
