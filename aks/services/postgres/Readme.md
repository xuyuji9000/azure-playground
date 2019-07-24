- Run container

``` bash
docker run --name postgres \
--rm \
-p 5432:5432 \
-e POSTGRES_PASSWORD=mysecretpassword \
postgres
```

- Access database: `psql -h 0.0.0.0 postgres postgres`
