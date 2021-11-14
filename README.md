# containerized-express-boilerplate

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
