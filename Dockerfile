# Используйте официальный образ MySQL
FROM mysql:latest

# Установите переменные среды
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_ROOT_PASSWORD=root

# Откройте порт 3306
EXPOSE 3306