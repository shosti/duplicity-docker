.PHONY: build deploy

VERSION = 0.7.19-r0

build: Dockerfile
	docker build . -t shosti/duplicity:$(VERSION) --build-arg DUPLICITY_VERSION=$(VERSION)

deploy: build
	docker push shosti/duplicity:$(VERSION)
