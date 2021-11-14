# containerized-express-boilerplate

[![Build](https://github.com/ega4432/containerized-express-boilerplate/actions/workflows/build.yaml/badge.svg)](https://github.com/ega4432/containerized-express-boilerplate/actions/workflows/build.yaml)
![node.js](https://img.shields.io/badge/node-16.13.0--alpine3.12-blue.svg?style=plastic&logo=node.js&logoColor=#339933)
![nginx](https://img.shields.io/badge/nginx-1.21.3--alpine-blue.svg?logo=nginx&logoColor=#009639)
![mysql](https://img.shields.io/badge/mysql-8.0-blue.svg?logo=mysql&logoColor=#4479A1)

![Overview](https://github.com/ega4432/containerized-express-boilerplate/blob/main/docs/overview.png)

This is a simple boilerplate of containerized Express monolithic application using Docker/Docker Compose.

## Requirements

- Git
- Docker

## Usage

1. Create your new repository using this boilerplate for template.

![Use template](https://github.com/ega4432/containerized-express-boilerplate/blob/main/docs/screentshot_setup.png)

```sh
% git clone https://github.com/<YOUR_USERNAME>/<YOUR_REPOSITORY>.git

% cp ./.env.example ./.env
```

2. Build and run the containerized environment  in your local machine.

```sh
# Build
% make build

# Run containers
% make up
```

## Components

```sh
% tree ./services -L 1
./services
├── mysql
├── nginx
└── node
```

See below for details.

### Application container

 key | value
 --- | ---
 Base image | [node](https://hub.docker.com/_/node):16.13.0-alpine3.12
 Dependency | DB container: `service_healthy`

### Web contariner

 key | value
 --- | ---
 Base image | [nginx](https://hub.docker.com/_/nginx):1.21.3-alpine
 Dependency | Application container: `service_started`

### DB container

 key | value
 --- | ---
 Base image | [mysql](https://hub.docker.com/_/mysql):8.0
 Dependency | -

## License

MIT
