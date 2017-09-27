TAG=0.0.1
NAME=ruby-application:${TAG}
RELEASE_NAME=trotttrotttrott/${NAME}

build:
	docker build -t ${NAME} .

release:
	docker tag ${NAME} ${RELEASE_NAME}
	docker push ${RELEASE_NAME}
