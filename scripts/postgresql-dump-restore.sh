# dump
pg_dump -U postgres -h localhost -p 5432 db > db.sql

# restore
psql -U postgres -h localhost -d db < ./db.sql