FROM debian:bullseye

RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y


COPY ./tools/script.sh /
COPY ./conf/wp-config.php /

RUN chmod +x ./script.sh

EXPOSE 3306/tcp
EXPOSE 9000/tcp

CMD [ "/script.sh" ]
#CMD [ "sleep", "10000000" ]