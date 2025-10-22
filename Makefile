# Makefile: convenience targets for building and running the Docker image

.PHONY: help build run stop rm logs compose-up compose-down

# Default goal: show help
.DEFAULT_GOAL := help

help:
	@echo "Available make targets:"
	@echo "  build        - Build the Docker image"
	@echo "  run          - Build (if needed) and run the container (detached)"
	@echo "  stop         - Stop the running container"
	@echo "  rm           - Remove the container (stops first)"
	@echo "  logs         - Tail container logs"
	@echo "  compose-up   - docker-compose up --build -d"
	@echo "  compose-down - docker-compose down"
	@echo
	@echo "Examples:"
	@echo "  make build"
	@echo "  make run"
	@echo "  make logs"
	@echo

IMAGE_NAME := alien-muthur:latest
CONTAINER_NAME := alien-muthur
PORT := 8080

build:
	docker build -t $(IMAGE_NAME) .

run: build
	docker run -d --name $(CONTAINER_NAME) -p $(PORT):$(PORT) --env NODE_ENV=production $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME) || true

rm: stop
	docker rm $(CONTAINER_NAME) || true

logs:
	docker logs -f $(CONTAINER_NAME)

compose-up:
	docker-compose up --build -d

compose-down:
	docker-compose down
