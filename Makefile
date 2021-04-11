IMAGE := json-server
CONTAINER := json-server

.PHONY:	build
build:
	docker build -t $(IMAGE) .

.PHONY:	run
run:
	docker run --name $(CONTAINER) -p 3000:3000 -v `pwd`/db:/data $(IMAGE)

.PHONY:	stop
stop:
	docker stop $(CONTAINER)

.PHONY:	start
start:
	docker start $(CONTAINER)

.PHONY:	rm
rm:	stop
	docker rm $(CONTAINER)
