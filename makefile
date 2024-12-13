include .env

init:
	@python3 -m venv venv
	@source venv/bin/activate
	@pip3 install -r requirements.txt

run:
	@exec python3 app.py

build:
	@docker build -t health-calculator-service .

test:
	@exec python3 -m unittest test.py

test-api:
	@curl -X GET -H http://localhost:${APP_PORT}/test
run-container:
	@docker run --env-file .env -p ${APP_PORT}:${APP_PORT} health-calculator-service