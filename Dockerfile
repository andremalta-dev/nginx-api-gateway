FROM nginx
COPY gateway_server/nginx.conf /etc/nginx/nginx.conf
COPY gateway_server/api_gateway.conf /etc/nginx/
COPY gateway_server/services/* /etc/nginx/api_conf.d/
COPY gateway_server/responses/* /etc/nginx/responses.d/
COPY certs/yourdomain.com.pem /etc/nginx/ssl/certs/yourdomain.com.pem
COPY certs/yourdomain.com.key /etc/nginx/ssl/private/yourdomain.com.key
EXPOSE 80:80