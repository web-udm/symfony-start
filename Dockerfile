FROM php:7.4-fpm-alpine

WORKDIR /var/www

#установка symfony in cli
RUN apk update \
	&& apk add bash \
	&& wget https://get.symfony.com/cli/installer -O - | bash \
	&& mv /root/.symfony/bin/symfony /usr/local/bin/symfony

#установка и настройка Git
RUN apk add git \
	&& git config --global user.email "web.udm@gmail.com" \
	&& git config --global user.name "moildar"

RUN symfony new guestbook

COPY ./ ./