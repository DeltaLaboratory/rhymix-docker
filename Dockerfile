FROM php:7.3.29-fpm-stretch


# install need tools layer
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libpng-dev apt-utils git libcurl4-openssl-dev libssl-dev libxml2-dev

# ERROR TEST

# install php extension layer
RUN docker-php-source extract && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install curl && \
    docker-php-ext-install gd && \
    docker-php-ext-install iconv && \
    docker-php-ext-install json && \
    docker-php-ext-install pdo && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install simplexml && \
    docker-php-ext-install opcache && \
    pecl install apcu && \
    docker-php-ext-enable apcu && \
    docker-php-ext-install exif && \
    docker-php-ext-install fileinfo && \
    docker-php-ext-enable fileinfo && \
    docker-php-ext-install intl && \
    docker-php-source delete

# download rhymix layer
RUN git clone https://github.com/rhymix/rhymix.git rhymix

WORKDIR rhymix

RUN mkdir files && \
    chmod 777 files

ENTRYPOINT ["php"]

CMD ["-S", "0.0.0.0:80", "index.php"]
