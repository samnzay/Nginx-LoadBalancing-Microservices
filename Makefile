.PHONY: build-nginx build-app up down all

help: ## Print help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

build-nginx: ## Build nginx containers
	@docker build -t nginx-app .

build-app: ## Build app containers
	@cd app
	@docker build -t nodejs-app .

down: ## Stop containers and remove them
	@docker-compose down

up: ## Start containers
	@docker-compose up

down: ## Stop containers and remove them
	@docker-compose down

all:  down build-nginx build-app up