# switch to postgres
sudo -i -u postgres

# dump
pg_dump -U postgres -h localhost -p 5432 db > db.sql

# restore
psql -U postgres -h localhost -d dbname < ./db.sql

# run postgres shell
psql

# create db
CREATE DATABASE dbname;

# list db
\l

# list role
\du

# connect info
\conninfo