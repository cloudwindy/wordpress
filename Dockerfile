FROM wordpress:latest

RUN set -eux; \
    docker-php-ext-install mysql; \
    pecl install apcu; \
    pecl install redis; \
    pecl install memcached; \
    docker-php-ext-enable apcu redis memcached; \
    rm -rf /tmp/*