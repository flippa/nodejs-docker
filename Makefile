REPO ?= quay.io/flippa/nodejs
TAG  ?= 0.10.34

build: Dockerfile
	docker build --rm -t $(REPO):$(TAG) .
	docker tag -f $(REPO):$(TAG) $(REPO):latest

push:
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest
