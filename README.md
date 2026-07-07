# MongoDB-Community-Server---Instala-o-Autom-tica-para-Ubuntu

📌 Descrição

Este projeto disponibiliza um script para realizar a instalação automática do MongoDB Community Server 8.0 em sistemas Ubuntu 22.04 LTS e Ubuntu 24.04 LTS.

O processo automatiza todas as etapas necessárias para que o serviço seja instalado, configurado e iniciado corretamente.

🚀 Recursos
Atualiza o sistema operacional.
Instala todas as dependências necessárias.
Importa automaticamente a chave GPG oficial do MongoDB.
Adiciona o repositório oficial do MongoDB.
Instala a versão mais recente do MongoDB Community Server 8.0.
Habilita o serviço para iniciar automaticamente com o sistema.
Inicia o serviço imediatamente após a instalação.
Exibe o status do serviço.
Exibe a versão instalada do MongoDB.

📋 Pré-requisitos
Ubuntu 22.04 LTS ou superior
Usuário com privilégios de sudo
Conexão com a Internet

📂 Estrutura
.
├── install_mongodb.sh
└── README.md

▶️ Como utilizar
1. Clonar o repositório
git clone https://github.com/SEU-USUARIO/mongodb-install.git
2. Acessar a pasta
cd mongodb-install
3. Dar permissão ao script
chmod +x install_mongodb.sh
4. Executar
sudo ./install_mongodb.sh

✅ Verificando a instalação

Verifique se o serviço está em execução:

sudo systemctl status mongod

Resultado esperado:

Active: active (running)

🔍 Verificar a versão
mongod --version

ou

mongosh

⚙️ Comandos úteis
Iniciar o serviço
sudo systemctl start mongod
Parar o serviço
sudo systemctl stop mongod
Reiniciar o serviço
sudo systemctl restart mongod
Status
sudo systemctl status mongod
Habilitar na inicialização
sudo systemctl enable mongod
Desabilitar na inicialização
sudo systemctl disable mongod

🔥 Firewall (Opcional)

Caso seja necessário permitir conexões externas:

sudo ufw allow 27017/tcp
sudo ufw reload

🗑️ Desinstalação
sudo systemctl stop mongod
sudo apt remove --purge -y mongodb-org*
sudo rm -rf /var/log/mongodb
sudo rm -rf /var/lib/mongodb

🛡️ Segurança

Este script utiliza exclusivamente:

Repositório oficial do MongoDB.
Chave GPG oficial.
Pacotes oficiais da MongoDB Inc.

Recomenda-se restringir o acesso ao MongoDB em ambientes de produção, configurando autenticação, regras de firewall e controle de acesso conforme as necessidades do ambiente.

🤝 Contribuições

Contribuições são bem-vindas.

Caso encontre algum problema ou tenha sugestões de melhoria, abra uma Issue ou envie um Pull Request.

📄 Licença

Este projeto está disponível sob a licença MIT.

👨‍💻 Autor

Thiago Barbosa

Analista de Infraestrutura e Redes | Automação | Linux | DevOps | Banco de Dados

Se este projeto foi útil para você, deixe uma ⭐ no repositório.
