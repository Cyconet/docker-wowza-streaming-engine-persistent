IMAGE_NAME := waja/wowza-streaming-engine-linux-loadbalancer

build:
	docker image build --rm -t $(IMAGE_NAME) .
	
run:
	@echo docker container run --rm -it $(IMAGE_NAME) 
	
shell:
	docker container run --rm -it --entrypoint sh $(IMAGE_NAME) -l

test: build
	docker container ps | grep -q $(IMAGE_NAME)
