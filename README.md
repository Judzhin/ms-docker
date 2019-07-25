# ms-docker

## add mariadb
docker run --name some-mariadb -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mariadb:tag
docker run --name ms-mariadb -e MYSQL_ROOT_PASSWORD=root -d mariadb

## add phpmyadmin
docker run --name myadmin -d --link mysql_db_server:db -p 8080:80 phpmyadmin/phpmyadmin
docker run --name ms-pma -d --link ms-mariadb:db -p 8080:80 phpmyadmin/phpmyadmin