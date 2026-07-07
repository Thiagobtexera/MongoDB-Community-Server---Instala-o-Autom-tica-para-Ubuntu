#!/bin/bash

echo "========================================="
echo " Atualizando o sistema"
echo "========================================="

sudo apt update && sudo apt upgrade -y

echo "========================================="
echo " Instalando dependências"
echo "========================================="

sudo apt install -y curl gnupg ca-certificates

echo "========================================="
echo " Importando chave GPG do MongoDB"
echo "========================================="

curl -fsSL https://pgp.mongodb.com/server-8.0.asc | \
sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-8.0.gpg

echo "========================================="
echo " Detectando versão do Ubuntu"
echo "========================================="

UBUNTU_VERSION=$(lsb_release -cs)

echo "Versão detectada: $UBUNTU_VERSION"

echo "========================================="
echo " Adicionando repositório"
echo "========================================="

echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu $UBUNTU_VERSION/mongodb-org/8.0 multiverse" | \
sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

echo "========================================="
echo " Atualizando repositórios"
echo "========================================="

sudo apt update

echo "========================================="
echo " Instalando MongoDB"
echo "========================================="

sudo apt install -y mongodb-org

echo "========================================="
echo " Habilitando serviço"
echo "========================================="

sudo systemctl daemon-reload
sudo systemctl enable mongod
sudo systemctl start mongod

echo "========================================="
echo " Verificando status"
echo "========================================="

sudo systemctl status mongod --no-pager

echo "========================================="
echo " Versão instalada"
echo "========================================="

mongod --version

echo "========================================="
echo " MongoDB instalado com sucesso!"
echo "========================================="
