# 베이스 이미지로 Debian Bullseye 선택
FROM debian:bullseye

# 패키지 업데이트 및 MariaDB 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get install sudo && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

#RUN chmod +x /run/mysqld/mysqld.sock
#COPY ./tools/initdb.sql /initdb.sql

#RUN /etc/init.d/mariadb start && \
#    mysql -u root -p${MYSQL_ROOT_PASSWORD} < /initdb.sql && \
#    sudo /etc/init.d/mariadb stop

COPY ./tools/script.sh /script.sh
RUN chmod +x script.sh

EXPOSE 9000/tcp
EXPOSE 3306/tcp

CMD ["/script.sh"]
#CMD ["sleep", "100000"]
