
default:
	echo command: init


init:
	docker compose up -d --build
	docker compose exec apache composer install
	cp webapp/.env.example webapp/.env
	docker compose exec apache php artisan key:generate
