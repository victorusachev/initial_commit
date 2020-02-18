include .env

.PHONY: black help flake8 isort lint

help:
	@cat $(MAKEFILE_LIST)

black:
	pipenv run black .

flake8:
	pipenv run flake8 .

isort:
	pipenv run isort --recursive .

lint:
	isort
	black
	flake8
