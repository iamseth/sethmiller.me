SHELL := /bin/bash

build:
	@hugo --minify

run:
	@hugo server -D --disableFastRender

deploy: clean build
	aws s3 sync ./public/ s3://sethmiller.me/ --acl public-read --delete
	aws cloudfront create-invalidation --distribution-id E3IWFRBW4X29Z1 --paths '/*'
	aws cloudfront create-invalidation --distribution-id ERLPRX4C5H57P --paths '/*'

clean:
	@rm -rf public

.PHONY: build run deploy clean
