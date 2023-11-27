#!/bin/bash
echo ""
echo "             Início do desafio Linux"
echo "======================================================="
echo ""
echo "* Excluindo os diretórios"
rm -r -f /publico
rm -r -f /adm
rm -r -f /ven
rm -r -f /sec
echo ""
echo "* Excluindo grupos de usuários"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
echo ""
echo "* Excluindo usuários"
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo ""
echo "Fim"
echo "======================================================="

