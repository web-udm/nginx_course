FROM ubuntu:latest

RUN apt update \
    && apt install -y nginx \
    nano \
    php7.4 \
    php7.4-fpm \
    php7.4-mysql \
    php7.4-cgi