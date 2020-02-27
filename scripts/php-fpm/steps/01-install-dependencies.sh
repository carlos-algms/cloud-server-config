#!/usr/bin/env bash

echo "ℹ️ Updating for the first time"
${SUDO} apt update

echo "ℹ️ Installing software-properties-common"
${SUDO} apt install -y software-properties-common

echo "ℹ️ Adding PPA ppa:ondrej/php"
${SUDO} add-apt-repository ppa:ondrej/php -y

echo "ℹ️ Updating for the second time"
${SUDO} apt update

echo "ℹ️ Updating for the second time"
${SUDO} apt install -y build-essential autoconf libc-dev pkg-config libmcrypt-dev

echo "ℹ️ Installing PHP ${PHP_VER}"
${SUDO} apt install -y \
    php${PHP_VER} \
    php${PHP_VER}-bcmath \
    php${PHP_VER}-cli \
    php${PHP_VER}-common \
    php${PHP_VER}-curl \
    php${PHP_VER}-fpm \
    php${PHP_VER}-gd \
    php${PHP_VER}-intl \
    php${PHP_VER}-json \
    php${PHP_VER}-imap \
    php${PHP_VER}-mbstring \
    php${PHP_VER}-mysql \
    php${PHP_VER}-opcache \
    php${PHP_VER}-pgsql \
    php${PHP_VER}-pspell \
    php${PHP_VER}-readline \
    php${PHP_VER}-sqlite3 \
    php${PHP_VER}-tidy \
    php${PHP_VER}-xml \
    php${PHP_VER}-xmlrpc \
    php${PHP_VER}-xsl \
    php${PHP_VER}-zip \
    php-dev \
    php-pear \
    php-geoip \
    php-imagick \
    mcrypt

echo "ℹ️ Installing PHP mcrypt from PECL"
yes '' | ${SUDO} pecl install mcrypt-snapshot
