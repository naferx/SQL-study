

Installing on Ubuntu 22.04 jammy
https://www.postgresql.org/download/linux/ubuntu/

```shell
$> sudo apt-get install postgresql-14
```

ideas:
    create a script for running the evolution SQL files

Check PostgreSQL version

```shell
postgres=# SELECT version();

version 
----
 PostgreSQL 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1) on 
 x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 
 11.4.0, 64-bit
```


connecting via the PSQL tool

```shell
$> psql -h 127.0.0.1 -d store -U postgres -W
```

Troubleshooting

- Checking the pgAdmin logs
```shell
$> cat ~/.pgadmin/pgadmin4.log
```