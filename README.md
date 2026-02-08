# Types of Databases
1. SQL
2. No Sql (all database types)
understanding popular databases like Mysql, Mongodb and Cassandra.

Type of No SQL database 
1. Columner
2. Key-value
3. Document db
4. graph


# Storage types: 
(Block Storage, File Storage, Object Storage (S3) , RAID)
File System 
(Google File System, HDFS)


How to Scale Database
- Sharding (Horizontal and Vertical)
- Partitioning, micro Partition
- Replication, Mirroring
- Leader Election
- Indexing etc. index
- Normalisation
- Denormalization
- scalling
- Transaction
- Hashing (Consistent Hashing)
- Distributed databases
- CAP theoram
- Consistency patterns (Weak, strong, Eventual consistency) Degree of consistency or availability  
- ACID Properties 
- DataBase Modeling
- micro partition, 
- auto cluster, 
- time travel 
- Isolation Level 

How to decide which database is suiltable for which application

TEMP Table

Duplicate table (How to remove duplicate data)

(Explain)Compile instead of executing if you just want to see if the sql is currect or not and you don't need to see the data
Explain by json in each query 

-- Incremental data
-- new data will always be the latest data, like click data
OLAP and OLTP
-- Upsert, Merge (Snowflake, Postgres)



## Setup PostgreSQL
docker run --name pg -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres_local -p 5432:5432  -v pgdata:/var/lib/postgresql/data -d postgres:16


docker run --name pgadmin \
  -p 5050:80 \
  -e PGADMIN_DEFAULT_EMAIL=admin@example.com \
  -e PGADMIN_DEFAULT_PASSWORD=admin \
  -d dpage/pgadmin4

http://localhost:5050 (Login with username - admin@example.com, password - admin)

## Add server
Host: host.docker.internal
User: postgres
Password: postgres


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
