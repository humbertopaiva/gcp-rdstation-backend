FROM wordpress:latest

# Configurar variáveis de ambiente para o WordPress
ENV WORDPRESS_DB_HOST=db:3306
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=sqlpassword

# Copiar os arquivos do WordPress para o contêiner
COPY ./wordpress /var/www/html

# Definir a porta padrão para o WordPress
EXPOSE 80