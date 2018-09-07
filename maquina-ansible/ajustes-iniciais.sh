#!/bin/bash
#
# ajustes iniciais
#
echo "Copiando arquivos de configuracao"
/bin/cp interfaces /etc/network/interfaces 
/bin/cp hosts /etc/hosts
/bin/cp hostname /etc/hostname

echo "instalando dhpcd"
apt-get install --yes isc-dhcp-server
/bin/cp dhcpd.conf /etc/dhcp/dhcpd.conf
 
echo "instalando ansible"
apt-get install --yes ansible

echo "ajustes no git"
/usr/bin/git config --global user.email "sidneypio@gmail.com"
/usr/bin/git config --global user.name "Sidney Pio de Campos"

echo "criando chave rsa"
/usr/bin/ssh-keygen -t rsa
