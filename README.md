<div>
  <h1 align="center">Nginx Api Gateway</h1>

  <p>
    The primary function of the API gateway is to provide a single, consistent entry point for multiple APIs, regardless of how they are implemented or deployed at the backend. Our API gateway needs to manage existing APIs, monoliths, and applications undergoing a partial transition to microservices.

To understand more about nginx api gateway, visit: [Nginx API Gateway Documentation](https://www.nginx.com/blog/deploying-nginx-plus-as-an-api-gateway-part-1/)
  </p>
</div>

# Project structure
<pre>
└── certs/ ………………………………………………………………………… Certs file to allow ssl
└── gateway_server/
    ├── reponses/ ……………………………………………………… Subdirectory to record http responses.
    │   └── api_json_errors.conf ……………… Http error responses in JSON format mapped to be used by nginx.
    ├── services/ ……………………………………………………… Subdirectory to record http responses.
    │   └── *-services.conf …………………………… The backend services with location and proxy pass configurations.
    ├── api_gateway.conf …………………………………… Top-level configuration for the API gateway server.
    └── nginx.conf …………………………………………………… Nginx configuration, responsible to import all files.
</pre>

# Running the api gateway

1. Clone the projec:
   ```sh
   git clone git@github.com:larryrumson/nginx-gateway-api.git
   ```
1. Go to the project paste:
   ```sh
   cd nginx-gateway-api
   ```
2. Building the docker image:
   ```sh
   docker buid -t nginx-gateway-api .
   ```
3. Run the nginx container detached mode:
   ```sh
   docker run -d -p 5000:5000 nginx-gateway-api
   ```
   This container will be running in port 5000 and the nginx is going to listen the same port.
