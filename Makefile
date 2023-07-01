
#== help
help:
	@grep -A1 -E '^#==' Makefile


#== initialize
init:
	docker compose up -d --build
	docker compose exec apache composer install
	cp webapp/.env.example webapp/.env
	docker compose exec apache php artisan key:generate

#== terminate
down:
	docker compose down --rmi all --volumes --remove-orphans
