VERSION=7.5.13
NAME=docker-grafana

all: build push
build:
	docker build --no-cache=true -t $(NAME):$(VERSION) .
	docker tag $(NAME):$(VERSION) docker.sunet.se/$(NAME):$(VERSION)
update:
	docker build -t $(NAME):$(VERSION) .
	docker tag $(NAME):$(VERSION) docker.sunet.se/$(NAME):$(VERSION)
push:
	docker push docker.sunet.se/$(NAME):$(VERSION)
