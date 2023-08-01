FROM php:8.2-fpm

WORKDIR /var/www/html

# Install system dependencies and PHP extensions for Laravel
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_mysql

CMD ["php-fpm"]

EXPOSE 9000