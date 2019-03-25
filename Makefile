ROOT	:= $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
NAME	:= docktools
VERSION := 1.0
TAG 	:= benneic/$(NAME):$(VERSION)

.PHONY: default build

default: build
	@docker run --privileged -rm -it -v ~/.ssh:/root/.ssh:ro --name $(NAME) $(TAG) bash

build:
	@docker build -t $(TAG) $(ROOT)
	
run:
	@docker run --privileged -it -d -v ~/.ssh:/root/.ssh:ro --name $(NAME) $(TAG)

bash:
	@docker exec -it $(NAME) bash

clean:
	@docker stop $(NAME)
	@docker rm -v $(NAME)
	@docker rmi -f $(TAG)
