This is the Node js & Mongo db project.
Commands:
sudo usermod -aG docker $USER
docker build -t debayanmondal/frontend:v1 .
docker build -t debayanmondal/backend:v1 .
docker images
docker push debayanmondal/frontend:v1
docker push debayanmondal/backend:v1
docker run --name frontend -td -p 3000:3000 debayanmondal/frontend:v1
docker run --name backend -td -p 27017:27017 debayanmondal/backend:v1
docker ps -a
