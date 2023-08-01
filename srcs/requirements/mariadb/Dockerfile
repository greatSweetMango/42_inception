# 베이스 이미지로 Debian Bullseye 선택
FROM debian:bullseye

# 패키지 업데이트 및 MariaDB 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get install sudo && \
    rm -rf /var/lib/apt/lists/*

#RUN chmod +x /run/mysqld/mysqld.sock

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

#COPY ./tools/script.sh /
#RUN chmod +x /script.sh

COPY ./tools/initdb.sql /initdb.sql
RUN /etc/init.d/mariadb start && \
    mysql -u root -p${MYSQL_ROOT_PASSWORD} < /initdb.sql && \
    sudo /etc/init.d/mariadb stop

# MariaDB 실행 스크립트
#CMD ["/script.sh"]
CMD ["mysqld"]
