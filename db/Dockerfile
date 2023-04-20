FROM mysql:5.7

# Configurar a variável de ambiente para o MySQL
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_ROOT_PASSWORD=sqlpassword

# Copiar os arquivos do MySQL para o contêiner
COPY . /var/lib/mysql
