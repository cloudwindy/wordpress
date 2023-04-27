FROM wordpress:latest

RUN set -ex && \
    pecl install apcu && \
    pecl install redis && \
    docker-php-ext-enable apcu redis && \
    rm -rf /tmp/*