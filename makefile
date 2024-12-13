SHELL := /bin/bash
IMAGE_NAME := health-calculator-service
APP_HOST := localhost
APP_PORT := 5000

init:
	@python3 -m venv venv
	@. venv/bin/activate
	@pip install -r requirements.txt

init-ci:
	@pip install -r requirements.txt

run:
	@. venv/bin/activate
	@exec python3 app.py

test:
	@. venv/bin/activate
	@exec python3 -m unittest test.py

build:
	@docker build -t ${IMAGE_NAME} .


test-api:
	@curl -X GET http://${APP_HOST}:${APP_PORT}/test

run-container:
	@docker run --env-file .env -p ${APP_PORT}:${APP_PORT} ${IMAGE_NAME}

help:
	@echo "make init - create virtual environment"
	@echo "make run - run app"
	@echo "make build - build docker image"
	@echo "make test - run tests"
	@echo "make test-api - test api"
	@echo "make run-container - run container"	