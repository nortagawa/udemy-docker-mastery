#!/bin/bash

# Step 1:  start a postgres 9.6.1 container
docker container run -d --name psql -v psql:/var/lib/postgresql/data postgres:9.6.1
docker container logs -f psql
docker container stop a74 # unique hash

# Step 2:  start a postgres 9.6.2 container using the same named volume
docker container run -d --name psql2 -v psql:/var/lib/postgresql/data postgres:9.6.2
docker container logs -f psql
docker container stop 783 # unique hash

# Step 3:  check process history
docker container ps -a
