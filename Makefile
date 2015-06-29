build:
	docker build --force-rm -t tomologic/$(shell basename $(CURDIR)):8 .
run:
	docker run --rm -it tomologic/$(shell basename $(CURDIR)):8
rmi:
	docker rmi tomologic/$(shell basename $(CURDIR)):8
