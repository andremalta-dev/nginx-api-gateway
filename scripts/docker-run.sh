docker stop nginx-api-gateway
docker rm nginx-api-gateway
docker run -d -p 4000:4000 --name nginx-api-gateway nginx-gateway