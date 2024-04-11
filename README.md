# Learn-SQL
# Types of Databases
1. SQL
2. Nosql (ALl database types)
understanding popular databases like Mysql, Mongodb and Cassandra.

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


## Setup PostgreSQL
docker run -p 5432:5432 --name postgres_local -e POSTGRES_PASSWORD=postgres -d postgres 
docker exec -it postgres_local bash 
psql "host=127.0.0.1 port=5432 user=postgres dbname=postgres" 
psql -h 127.0.0.1 -p 5432 -d postgres -U postgres

CREATE DATABASE learnsql;
\l - list databases
\c <db_name>
\dt - list all the tables of current database
\x - extended display on or off
\q - quit
