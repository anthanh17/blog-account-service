# blog-account-service: Golang, MySQl, Docker

## Tools:

- DesignDB: `dbdiagram.io`

  - Generate SQL code to create the schema in target database engine: Postgress, MySQL

- GUI database Client: `Table Plus`

## Setup development environment

- wsl2 (option with windows)
- Go
- Docker
- Make
- sqlc: genarate golang codes from SQL queries
- golang-migrate: migrate database: `brew install golang-migrate`

## Step

1. Design DB
2. Build MySql local docker

```
docker run
--name <container_name>
-e <environment_variable>
-p <host_ports:container_ports>
-d
<image>:<tag>
```

```
docker run --name account_mysql_container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root@123 -e MYSQL_USER=annt -e MYSQL_PASSWORD=annt@123 -d mysql:latest
```

```
docker run --name account_mysql_container -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root@123 -d mysql:latest

```

3. Check container

```
docker ps
```

4. Connect to DB and access ít console

```
docker exec -it <container_name_or_id> <command> [args]
```

```
docker exec -it account_mysql_container mysql -u root -p
```

5. View container logs

```
docker logs <container_name_or_id>
```

6. Have 2 Way init database

- Table Plus -> Sql -> Run .sql
- Run `migration` in Golang
