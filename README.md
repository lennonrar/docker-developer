docker network create developer
docker build -t docker-developer .
docker run -it docker-developer