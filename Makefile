up:
	docker-compose up -d

reboot:
	docker-compose down && docker-compose up -d

start-php:
	docker exec -it symfony_start-php /bin/sh

symfony-install:
	docker exec symfony_start-php symfony new guestbook
	docker exec symfony_start-php cd guestbook
	docker exec symfony_start-php mv $(ls -a) ../
	docker exec symfony_start-php cd ../
	docker exec symfony_start-php rm -r guestbook