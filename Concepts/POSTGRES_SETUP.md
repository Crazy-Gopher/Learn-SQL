## Setup PostgreSQL
docker run --name pg -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres_local -p 5432:5432  -v pgdata:/var/lib/postgresql/data -d postgres:16


## PgAdmin
docker run --name pgadmin -p 5050:80 -e PGADMIN_DEFAULT_EMAIL=admin@example.com -e PGADMIN_DEFAULT_PASSWORD=admin -d dpage/pgadmin4

http://localhost:5050
user = admin@example.com
password = admin

## Add server
Name: postgres_local
Host: host.docker.internal
User: postgres
Password: postgres


# Other option to connect to postgresql
docker exec -it pg bash 

psql "host=127.0.0.1 port=5432 user=postgres dbname=postgres_local" 
psql -h 127.0.0.1 -p 5432 -d postgres_local -U postgres


CREATE DATABASE learnsql;
\l - list databases
\c <db_name>
\dt - list all the tables of current database
\x - extended display on or off
\q - quit

\d table_name; - check the schema(structure) of the table


CREATE SCHEMA ecommerce_db;

---

# Docker-Compose
docker-compose up -d
docker-compose down

### Add server
Name: postgres_local
Host: postgres
User: postgres
Password: postgres