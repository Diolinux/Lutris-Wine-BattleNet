#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock ;

## Adicionando/Confirmando arquitetura de 32 bits ##

sudo dpkg --add-architecture i386 

## Atualizando o repositório ##

sudo apt update

## Adicionando repositórios do Lutris e do Wine##

sudo add-apt-repository ppa:lutris-team/lutris -y

wget -nc https://dl.winehq.org/wine-builds/winehq.key 

sudo apt-key add winehq.key -y

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

## Atualizando o repositório depois da adição de novos repositórios ##

sudo apt update

## Instalação do Lutris, Wine e adicionais para Battle.net ##

sudo apt install lutris libvulkan1 libvulkan1:i386 -y

sudo apt-get install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y

echo "Script Finalizado"
