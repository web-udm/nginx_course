FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y \
    nano \
    php7.4 \
    php7.4-fpm \
    php7.4-cgi \
    gcc \
    make \
    libpcre3 libpcre3-dev \
    zlib1g zlib1g-dev \
    libgd-dev \
    tar \
    wget

RUN apt install -y nginx

WORKDIR /var/www

RUN wget -c http://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz \
    && rm latest.tar.gz

RUN service nginx start

CMD tail -f /dev/null