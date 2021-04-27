FROM php:7.4-fpm-buster

# コンテナ内の環境変数
ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

# composer
COPY --from=composer:1.10 /usr/bin/composer /usr/bin/composer

# package
RUN apt-get update && \
  apt-get -y install git unzip libzip-dev libicu-dev libonig-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install intl pdo_mysql zip bcmath

# phpの設定ファイル
COPY ./php.ini /usr/local/etc/php/php.ini

# ディレクトリ
WORKDIR /laravel