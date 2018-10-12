SHELL := /bin/bash

build:
	@hugo

run:
	@hugo server -D --disableFastRender

deploy: build
	aws s3 sync ./public/ s3://sethmiller.me/ --acl public-read --delete
	aws cloudfront create-invalidation --distribution-id E3IWFRBW4X29Z1 --paths '/*'

clean:
	@rm -rf public

.PHONY: build run deploy clean
