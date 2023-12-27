#!/bin/bash

echo "Criando Diretórios"
mkdir publico
mkdir adminitracao
mkdir vendas
mkdir secretaria


echo "Criando Grupos."
groupadd GRUPO_ADM
groupadd GRUPO_VENDAS
groupadd GRUPO_SEC


echo "Criando Usuários e Especificando o grupo."
useradd carlos -c "Carlos Adm" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_ADM
useradd maria -c "Maria Adm" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_ADM
useradd joao -c "João Adm" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_ADM

useradd debora -c "Débora Vendas" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_VENDAS
useradd sebastiana -c "Sebastiana Vendas" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_VENDAS
useradd roberto -c "Roberto Vendas" -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_VENDAS

useradd josefina -c "Josefina Secretaria" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_SEC
useradd amanda -c "Amanda Secretaria" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_SEC
useradd rogerio -c "Rogério Secretaria" -m -s /bin/bash -p $(openssl passwd -6 admadm0080) -G GRUPO_SEC


echo "Especificando permissões dos Diretórios"
chown root:GRUPO_ADM /administracao
chown root:GRUPO_VENDAS /vendas
chown root:GRUPO_SEC /secretaria

chmod 770 /administracao
chmod 770 /vendas
chmod 770 /secretaria
chmod 777 /publico
