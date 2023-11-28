  GNU nano 6.2                                                                                 iacl.sh                                                                                           
#!/bin/bash
echo ""
echo "             Início do desafio Linux"
echo "======================================================="
echo ""
echo "* Criando os diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo ""
echo "* Criando grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo ""
echo "* Criando usuários e adicionando aos grupos respectivos"
useradd carlos -c "Carlos Nascimento" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria Matos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Carlos Silva" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c "Débora Souza" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Muller" -s /bin/bash -m -p $(openssl -1 passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c "Josefina Helena" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Safira" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Almir" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
echo ""
echo "* Especificando permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo ""
echo "Fim"
echo "======================================================="



