#!/bin/ash
#
# ajustes iniciais
#
echo "Copiando arquivos de configuracao"
/bin/cp interfaces /etc/network/interfaces 
/bin/cp hosts /etc/hosts
/bin/cp hostname /etc/hostname
/bin/cp sshd_config /etc/ssh/sshd_config

echo "ajustando repositorios"
/bin/cp repositories /etc/apk
/sbin/apk update

echo "instalando dhpcd"
/sbin/apk add dhcp
/bin/cp dhcpd.conf /etc/dhcp/dhcpd.conf
rc-update add dhcpd
 
echo "instalando ansible"
/sbin/apk add ansible

echo "ajustes no git"
/usr/bin/git config --global user.email "sidneypio@gmail.com"
/usr/bin/git config --global user.name "Sidney Pio de Campos"

echo "criando chave rsa"
/usr/bin/ssh-keygen -t rsa
