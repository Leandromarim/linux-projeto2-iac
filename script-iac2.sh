#!/bin/bash

echo "Meu script para atualizar o Server..."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/Leandromarim/linux-projeto1-iac/archive/refs/heads/main.zip
unzip main.zip
cd linux-projeto1-iac
cp -R * /var/www/html/
