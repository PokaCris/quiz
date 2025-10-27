FROM php:8.1.33-fpm
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /app
COPY ./composer.json ./composer.json
RUN ["/usr/bin/composer", "dump-autoload", "--optimize"]