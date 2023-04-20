#!/bin/sh

# Configuração das variáveis de conexão
REMOTE_USER=root
REMOTE_PASSWORD=sqlpassword
REMOTE_HOST=127.0.0.1
REMOTE_PORT=3306
REMOTE_DATABASE=wordpress

LOCAL_USER="root"
LOCAL_PASSWORD="sqlpassword"
LOCAL_DATABASE="wordpress"

# Criação do arquivo de dump do banco de dados remoto
echo "Criando o dump do banco de dados remoto..."
mysqldump -u $REMOTE_USER -p$REMOTE_PASSWORD --host $REMOTE_HOST -P $REMOTE_PORT --single-transaction --column-statistics=0 --set-gtid-purged=OFF $REMOTE_DATABASE > backup.sql

# Verifica se o arquivo de dump foi criado com sucesso
if [ $? -ne 0 ]; then
  echo "Erro ao criar o dump do banco de dados remoto."
  exit 1
fi

# Restaura o dump no banco de dados local
echo "Restaurando o dump no banco de dados local..."
docker-compose exec -T db mysql -u $LOCAL_USER -p$LOCAL_PASSWORD $LOCAL_DATABASE < backup.sql

# Verifica se o processo de restore foi bem-sucedido
if [ $? -eq 0 ]; then
  echo "Sincronização do banco de dados local concluída com sucesso!"
else
  echo "Erro ao restaurar o dump no banco de dados local."
fi
