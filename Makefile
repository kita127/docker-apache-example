
#== make help : help
help:
	@grep -E '^#==' Makefile | sed -E 's/^#== //g'



#== make up : docker compose up & 初回の環境構築
up:
	docker compose up -d --build
	docker compose exec apache composer install
	cp webapp/.env.example webapp/.env
	docker compose exec apache php artisan key:generate
	docker compose exec apache npm install

#== make down : docker compose down
down:
	docker compose down --rmi all --volumes --remove-orphans
