# ����������� ����������� ����� MySQL
FROM mysql:latest

# ���������� ���������� �����
ENV MYSQL_DATABASE=itransition_task4
ENV MYSQL_ROOT_PASSWORD=root

# �������� ���� 3306
EXPOSE 3306