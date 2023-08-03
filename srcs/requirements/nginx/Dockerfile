FROM debian:bullseye

#RUN apt -y update && apt install -y nginx
RUN apt -y update && apt install -y nginx && apt install openssl -y

# OpenSSL을 사용하여 SSL/TLS 인증서를 생성
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/server.key -out /etc/nginx/server.crt -subj "/C=US/ST=CA/L=SanFrancisco/O=MyOrg/OU=MyUnit/CN=localhost"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 9000/tcp
EXPOSE 3306/tcp

CMD ["nginx", "-g", "daemon off;"]