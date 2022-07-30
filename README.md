# Docker with multi-stage

Practice about multi-stage on Docker

## Clone

```bash
git clone https://github.com/prawee/docker-multi-stage.git
cd docker-multi-stage
yarn install
```

## Start

```bash
yarn start
```

## Docker

### Build

```bash
docker build -t nginx-react .
docker images
```

### Run

```bash
docker ps
docker run -d -p 8080:80 --name react-webapp nginx-react
```

## Update

```bash
docker images -f="dangling=true"
docker stop react-webapp
docker rm react-webapp
docker image prune
docker run -d -p 8081:80 --name react-webapp-8081 nginx-react
```