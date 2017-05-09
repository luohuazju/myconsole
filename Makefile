IMAGE=sillycat/public
TAG=raspberrypi-myconsole
NAME=raspberrypi-myconsole

docker-context:

build: docker-context
	docker build -t $(REPOSITORY)/$(IMAGE):$(TAG) .

run:
	docker run -d -p 8000:8000 -e RUNNING_ENV=stage --name $(NAME) $(REPOSITORY)/$(IMAGE):$(TAG)

debug:
	docker run -ti -p 8000:8000 -e RUNNING_ENV=stage --name $(NAME) $(REPOSITORY)/$(IMAGE):$(TAG) /bin/bash

clean:
	docker stop ${NAME}
	docker rm ${NAME}

logs:
	docker logs ${NAME}

publish:
	docker push ${IMAGE}
