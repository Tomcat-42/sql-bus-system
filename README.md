# Bus SQL System

A simple SQL model of a public transport system.

## Run the database

For running the database, you will need [docker-compose](https://docs.docker.com/compose/):

```bash
docker-compose up -d
```

## View the database logs

```bash
docker-compose logs db
```

## Connect to the database

For connecting to the db using [pgcli](https://github.com/dbcli/pgcli), just run:

```bash
pgcli postgresql://postgres:postgres@localhost:5432/bus
```
