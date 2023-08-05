# 베이스 이미지로 Debian Bullseye 선택
FROM debian:bullseye

# 패키지 업데이트 및 MariaDB 설치
RUN apt-get update && apt-get upgrade -y &&\
    apt-get install -y mariadb-server && \
    apt-get install sudo && \
    apt-get install -y psmisc && \
    apt-get install -y systemctl && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/my.cnf /etc/mysql/

COPY ./tools/script.sh /script.sh
RUN chmod +x script.sh

# RUN chmod 777 -R /var/lib/mysql && \
#     chown -R mysql:mysql /var/lib/mysql

EXPOSE 9000/tcp
EXPOSE 3306/tcp

CMD ["/script.sh"]
# CMD ["mysqld_safe", "--user=root", "--foreground"]
# CMD ["mysqld", "--user=mysql", "--console"]
# CMD ["sleep", "100000"]
