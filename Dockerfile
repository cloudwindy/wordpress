FROM wordpress:latest

RUN set -ex && \
    pecl install apc && \
    pecl install redis && \
    cp /var/www/html/wp-content/plugins/w3-total-cache/ini/apc.ini /etc/php.d/ && \
    docker-php-ext-enable redis