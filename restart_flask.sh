pwd
cd /opt/airflow/dags/webapp/
pwd
docker-compose ps
echo "Docker-compose list"
docker-compose build
docker-compose up -d
docker rmi $(docker images --filter "dangling=true")

