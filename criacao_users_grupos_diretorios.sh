#!/bin/bash

echo "Criação dos Diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos Grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Usuários do Grupo ADM:"

useradd carlos -c "Carlos Administrativo" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria Administrativo" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Administrativo" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

echo "Criação de Usuários do Grupo VEN:"

useradd debora -c "Débora Vendas" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Vendas" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Vendas" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

echo "Criação de Usuários do Grupo SEC:"

useradd josefina -c "Josefina Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Definição dos proprietários e das permissões nos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim do Script"
