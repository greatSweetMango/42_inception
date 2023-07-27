# 베이스 이미지로 Debian Bullseye 선택
FROM debian:bullseye

# 환경 변수 설정
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# 패키지 업데이트 및 MariaDB 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# 컨테이너 시작 시 MariaDB 서버 실행
CMD ["mysqld", "--user=root"]
