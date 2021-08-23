build:
	@echo "Building \"docker-compose\" with tag \"ror_twitter_clone\""
	docker-compose build -f . -t ror_twitter_clone .

prune: down
	@echo "Cleaning up process"
	docker system prune -f
	docker volume prune -f

up: default
	docker-compose up

down:
	docker-compose down
