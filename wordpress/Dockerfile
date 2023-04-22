FROM wordpress:6.2

# Configurar variáveis de ambiente para o WordPress
ENV WORDPRESS_DB_HOST=127.0.0.1:3306
ENV WORDPRESS_DB_USER=sqluser
ENV WORDPRESS_DB_PASSWORD=sqlpassword

# Copiar os arquivos do WordPress para o contêiner
COPY . /var/www/html

# Definir a porta padrão para o WordPress
EXPOSE 80