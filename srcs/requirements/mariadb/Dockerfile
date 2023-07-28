# 베이스 이미지로 Debian Bullseye 선택
FROM debian:bullseye

# 패키지 업데이트 및 MariaDB 설치
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

COPY ./tools/script.sh /

RUN chmod +x /script.sh

# MariaDB 실행 스크립트
CMD ["/script.sh"]
