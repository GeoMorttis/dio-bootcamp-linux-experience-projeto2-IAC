#!/bin/bash

echo "Atualizando servidor....."
apt-get update
apt-get upgrade -y
echo "Instalando servidor Apache2....."
apt-get install apache2 -y
echo "Instalando software de descompatação Unzip....."
apt-get install unzip -y
echo "Baixando os arquivos da aplicação no GitHub....."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando arquivo da aplicanção....."
unzip main.zip
echo "Entrando na pasta da aplicação descompactada....."
cd linux-site-dio-main
echo "Copiando arquivos da aplicação para a pasta de compartilhamento Web....."
cp -R * /var/www/html/
echo "Fim do Script"
