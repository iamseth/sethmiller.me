SHELL := /bin/bash


build:
	@hugo

deploy:
	@rsync -avp public/ nubes:/var/www/html/
