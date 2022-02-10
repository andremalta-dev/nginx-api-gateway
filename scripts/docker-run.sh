docker stop nginx-api-gateway
docker rm nginx-api-gateway
docker run -d -p 5000:5000 --name nginx-api-gateway nginx-gateway