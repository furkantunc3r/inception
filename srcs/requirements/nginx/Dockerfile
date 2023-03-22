FROM debian:buster

RUN apt-get -y update; \
    apt-get -y install nginx openssl; \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
    -subj "/C=TR/ST=Kocaeli/L=Kocaeli/O=Ecole42/OU=ftuncer/CN=ftuncer"

COPY ./conf/default.conf /etc/nginx/sites-enabled/default.conf
COPY ./conf/fastcgi_params /etc/nginx/fastcgi_params

RUN rm /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default; \
	ln -s /etc/nginx/sites-enabled/default.conf /etc/nginx/sites-available/default.conf

CMD ["nginx", "-g", "daemon off;"]
