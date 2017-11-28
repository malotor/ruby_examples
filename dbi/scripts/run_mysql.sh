#!/bin/sh
docker run --name ruby-examples -e MYSQL_ROOT_PASSWORD=example -e MYSQL_DATABASE=db_ruby_examples -e MYSQL_USER=example -e MYSQL_PASSWORD=example -p 3306:3306  -d mysql:latest
