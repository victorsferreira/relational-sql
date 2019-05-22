### Import dump on Postgres

psql -h \<host\> -d \<table-name\> -U \<database-user\> -f \<file\>.sql 

### Analyse query performance on Postgres

EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM /<table-name/>