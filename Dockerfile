FROM php:7.0-apache
MAINTAINER eduardok.fx@gmail.com

RUN apt-get update && apt-get install -y vim
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /root
ADD ./html/index.html /root/
