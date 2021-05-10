# Postgresql & PgAdmin4


## Requirements:
* docker >= 17.12.0+
* docker-compose

## Environments
This Compose file contains the following environment variables:

* `POSTGRES_USER` the default value is **postgres**. _[ This variable will create the 
  specified user with superuser power and a database with the same name. If it is not 
  specified, then the default user of postgres will be used. ]_
* `POSTGRES_PASSWORD` the default value is **admin**
* `PGADMIN_PORT` the default value is **5050**
* `PGADMIN_DEFAULT_EMAIL` the default value is **pgadmin4@pgadmin.org**
* `PGADMIN_DEFAULT_PASSWORD` the default value is **admin**

## Access to postgres: 
* `localhost:5432`
* **Username:** postgres (as a default)
* **Password:** admin (as a default)

## Access to PgAdmin: 
* **URL:** `http://localhost:5050`
* **Username:** pgadmin4@pgadmin.org (as a default)
* **Password:** admin (as a default)

## Add a new server in PgAdmin:
* **Host name/address** `postgres`
* **Port** `5432`
* **Username** as `POSTGRES_USER`, by default: `postgres`
* **Password** as `POSTGRES_PASSWORD`, by default `changeme`