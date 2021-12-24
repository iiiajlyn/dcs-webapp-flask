docker exec -i postgres /bin/bash -c "PGPASSWORD=postgres psql --username postgres dcs" < ./dcs_dump_2021-10-04.sql
