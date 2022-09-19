FROM php:8.1-apache-bullseye

RUN apt-get update \
 && apt-get install -y zlib1g-dev libzip-dev unzip vim\
 && docker-php-ext-install zip

ENV COMPOSER_ALLOW_SUPERUSER 1
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ADD docker/php/php.ini /usr/local/etc/php/
ADD docker/php/apache/000-default.conf /etc/apache2/sites-enabled/

WORKDIR /var/www/html

COPY ../../../backend /var/www/html

RUN chown www-data storage/ -R \
 && composer install
