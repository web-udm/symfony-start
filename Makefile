up:
	docker-compose up -d

reboot:
	docker-compose down && docker-compose up -d

start-php:
	docker exec -it symfony_start-php /bin/sh
