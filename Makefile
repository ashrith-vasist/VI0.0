IMAGE_NAME = vi-img
CONTAINER_NAME = vi-container

build:
	@docker build -t $(IMAGE_NAME) . 

run:
	@docker run -d -p 5000:5000 --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	@docker stop $(CONTAINER_NAME)

remove:
	@docker remove $(CONTAINER_NAME)

removei:
	@docker rmi $(IMAGE_NAME)

.PHONY: build run stop remove removei