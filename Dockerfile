# PHP integration for both Laravel and Lumen
FROM php:5.5.24-cli

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y libmcrypt-dev &&\
    apt-get install -y  zlib1g-dev -y &&\
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mcrypt
RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# for php artisan serve
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
EXPOSE 8000
