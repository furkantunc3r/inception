FROM debian:buster

RUN apt-get update; \
    apt-get install -y mariadb-server

COPY /tools/startdb.sh /

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD bash 'startdb.sh'; 'bash'
