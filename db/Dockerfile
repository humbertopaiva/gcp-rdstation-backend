FROM mysql:8.0

# Configurar a variável de ambiente para o MySQL
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_ROOT_PASSWORD=sqlpassword

# Copiar os arquivos do MySQL para o contêiner
COPY . /var/lib/mysql
