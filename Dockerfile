FROM wordpress:latest

RUN set -eux; \
    docker-php-ext-install pdo pdo_mysql; \
    pecl install apcu; \
    pecl install redis; \
    docker-php-ext-enable apcu redis; \
    rm -rf /tmp/*