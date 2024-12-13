SHELL := /bin/bash
include .env

init:
	@python3 -m venv venv
	@. venv/bin/activate
	@pip install -r requirements.txt

run:
	@. venv/bin/activate
	@exec python3 app.py

build:
	@docker build -t health-calculator-service .

test:
	@exec python3 -m unittest test.py

test-api:
	@curl -X GET http://localhost:${APP_PORT}/test
run-container:
	@docker run --env-file .env -p ${APP_PORT}:${APP_PORT} health-calculator-service

help:
	@echo "make init - create virtual environment"
	@echo "make run - run app"
	@echo "make build - build docker image"
	@echo "make test - run tests"
	@echo "make test-api - test api"
	@echo "make run-container - run container"	