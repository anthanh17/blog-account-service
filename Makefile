# Setup mysql database docker
mysql:
	docker run --name account_mysql_container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root@123 -d mysql:latest

# Pass: root@123 | quit;
accessdb:
	docker exec -it account_mysql_container mysql -u root -p

.PHONY: mysql
