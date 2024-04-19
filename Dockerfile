FROM mysql:latest
MAINTAINER baeldung.com

# ������������� ����� ������� ��� MySQL
RUN chown -R mysql:root /var/lib/mysql/

# ���������� ��������� ��� ���� ������ MySQL
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# ������������� ���������� ���������
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

# ��������� ���� 3306
EXPOSE 3306
