FROM ubuntu:latest

RUN apt update \
    && apt install -y nano \
    nano \
    php7.4 \
    php7.4-fpm \
    php7.4-mysql \
    php7.4-cgi \
    gcc \
    make \
    libpcre3 libpcre3-dev \
    zlib1g zlib1g-dev \
    libgd-dev

COPY ./ /sites

WORKDIR /sites

RUN nginx-1.18.0/configure --with-http_image_filter_module=dynamic \
    && make \
    && make install