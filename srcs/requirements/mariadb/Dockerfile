FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

RUN service mysql start

CMD ["mysqld"]