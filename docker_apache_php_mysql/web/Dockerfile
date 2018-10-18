FROM php:5.6-apache

# PHPのインストール
RUN apt-get update \
    && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    openssl libssl-dev \
    libxml2-dev \
    && docker-php-ext-install -j$(nproc) iconv intl mcrypt pdo_mysql mbstring xml tokenizer zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

# apacheのrewriteを有効にする
RUN cd /etc/apache2/mods-enabled \
    && ln -s ../mods-available/rewrite.load

WORKDIR /var/www/html

# for web
EXPOSE 80
EXPOSE 443
