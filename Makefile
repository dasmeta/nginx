.PHONY: all test clean build publish

VERSION=1.21

build:
	docker build --build-arg VERSION=${VERSION} -t dasmeta/nginx:${VERSION} .

publish:
	docker push dasmeta/nginx:${VERSION}

test:
	docker-compose up -d
	curl http://localhost:8080
