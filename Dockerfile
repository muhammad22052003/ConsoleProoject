FROM mysql:latest
MAINTAINER baeldung.com

# Устанавливаем права доступа для MySQL
RUN chown -R mysql:root /var/lib/mysql/

# Определяем аргументы для базы данных MySQL
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# Открываем порт 3306
EXPOSE 3306
