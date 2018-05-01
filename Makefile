SHELL := /bin/bash

build:
	@hugo

run:
	@hugo server -D --disableFastRender

deploy: build
	@rsync -avp public/ nubes:/var/www/html/
