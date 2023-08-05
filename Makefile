all : up

up : 
	@sudo chmod 744 make_volume.sh
	@./make_volume.sh
	@docker-compose -f ./srcs/docker-compose.yml up -d

down : 
	@docker-compose -f ./srcs/docker-compose.yml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

clean :
	@chmod 744 clean.sh
	./clean.sh
fclean : clean
	rm -rf /home/jaehyuki/data

re : clean up

status : 
	@docker ps