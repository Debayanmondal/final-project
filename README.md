# Node.js & MongoDB Project
This project involves setting up a Node.js frontend and a MongoDB backend using Docker containers.

## Prerequisites
- Docker installed on your machine
- Docker Hub account (for pushing images)

## Setup Instructions
1. Add Current User to Docker Group:
sudo usermod -aG docker $USER
2. Build Docker Images:
docker build -t debayanmondal/frontend:v1 .
docker build -t debayanmondal/backend:v1 .
3. List Docker Images:
docker images
4. Push Docker Images to Docker Hub:
docker push debayanmondal/frontend:v1
docker push debayanmondal/backend:v1
5. Run Docker Containers:
docker run --name frontend -td -p 3000:3000 debayanmondal/frontend:v1
docker run --name backend -td -p 27017:27017 debayanmondal/backend:v1
6. List All Docker Containers:
docker ps -a
Additional Information:
Ensure that the ports 3000 and 27017 are available and not being used by other applications on your local machine.
The images are tagged as v1. You can update the tags based on your versioning strategy.
Stop Container:
docker stop frontend
docker stop backend
Remove Container:
docker rm frontend
docker rm backend
