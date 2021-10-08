# https://www.tutorialspoint.com/makefile/makefile_example.htm
# https://opensource.com/article/18/8/what-how-makefile

# Define required macros here
SHELL = /bin/sh

composer-up:
	@echo "Starting WordPress"
	sudo docker-compose -f wordpress2.yml up -d --remove-orphans

composer-down:	
	@echo "Stopping WordPress"
	sudo docker-compose -f wordpress2.yml down --remove-orphans

save-containers:
	sudo docker save --output ./backup/wordpress.tar wordpress
	sudo docker save --output ./backup/mysql.tar mysql
	ll -h backup/