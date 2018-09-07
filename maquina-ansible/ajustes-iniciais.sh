#!/bin/ash
#
# ajustes iniciais
#
/bin/cp interfaces /etc/network/interfaces 
/bin/cp hosts /etc/hosts
/usr/bin/git config --global user.email "sidneypio@gmail.com"
/usr/bin/git config --global user.name "Sidney Pio de Campos"
/usr/bin/ssh-keygen -t rsa
