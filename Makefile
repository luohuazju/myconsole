IMAGE=sillycat/public
TAG=raspberrypi-myconsole
NAME=raspberrypi-myconsole

docker-context:

build: docker-context
	docker build --no-cache -t $(IMAGE):$(TAG) .

run:
	docker run -d -p 8000:8000 -e RUNNING_ENV=stage --name $(NAME) $(IMAGE):$(TAG)

debug:
	docker run -ti -p 8000:8000 -e RUNNING_ENV=stage --name $(NAME) $(IMAGE):$(TAG) /bin/bash

clean:
	docker stop ${NAME}
	docker rm ${NAME}

logs:
	docker logs ${NAME}

publish:
	docker push ${IMAGE}
