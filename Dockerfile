FROM mysql:latest
MAINTAINER baeldung.com

# Устанавливаем права доступа для MySQL
RUN chown -R mysql:root /var/lib/mysql/

# Определяем аргументы для базы данных MySQL
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# Устанавливаем переменные окружения
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

# Открываем порт 3306
EXPOSE 3306
