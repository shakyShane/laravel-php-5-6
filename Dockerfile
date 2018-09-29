FROM php:5.6-fpm

RUN apt-get update && apt-get install -y \
        libmcrypt-dev mysql-client libmagickwand-dev \
        curl zip unzip git software-properties-common \
        libfreetype6-dev libjpeg62-turbo-dev \
        --no-install-recommends \
    && docker-php-ext-install mcrypt pdo_mysql \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
