#!/bin/bash

echo "Atualização e upgrade"
apt-get update
apt-get upgrade -y

echo "Instalação do apache"
apt-get install apache2 -y

echo "Instalação do unzip"
apt-get install unzip -y

echo "Selecionando a pasta - tmp"
cd /tmp

echo "Baixar o arquivo"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo"
unzip main.zip
cd linux-site-dio-main

echo "Copiando todos os arquivos da pasta para o destino"
cp -R * /var/www/html/
