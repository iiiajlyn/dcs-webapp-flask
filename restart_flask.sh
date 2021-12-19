echo "!!!!!!!!!!!!" current date "!!!!!!!!!"
date
echo "!!!!!!!!!!!!" current date "!!!!!!!!!"
cd /home/dcs-file5tat/dcs-webapp-flask
echo "current dir: " $PWD
docker-compose build
docker-compose down
docker-compose up -d
docker rmi $(docker images --filter "dangling=true")
