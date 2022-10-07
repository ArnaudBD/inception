NAME	= inception

DC_PATH	= srcs/docker-compose.yml

all:	
	docker-compose -f $(DC_PATH) up

build:
	docker-compose -f $(DC_PATH) up --build

clean:
	docker-compose -f $(DC_PATH) down

fclean:	rm_container 

rm_images:
	docker rmi $(docker images -q)

rm_volumes:
	docker volume rm $(docker volume ls -q)

rm_container:
	docker rm $(docker ps -qa)

kill:
	docker kill $(docker ps -qa)

