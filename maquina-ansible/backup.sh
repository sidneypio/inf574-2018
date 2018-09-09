#!/bin/bash
#
#
echo "Copiando arquivos de configuracao"
/bin/cp /etc/network/interfaces interfaces 
/bin/cp /etc/hosts hosts
/bin/cp /etc/hostname hostname
/bin/cp /etc/dhcp/dhcpd.conf dhcpd.conf
