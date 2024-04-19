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

# Добавляем SQL-файл с данными
ADD data.sql /etc/mysql/data.sql

# Заменяем имя базы данных в SQL-файле
RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql

# Копируем SQL-файл в папку для инициализации базы данных
RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d

# Открываем порт 3306
EXPOSE 3306
