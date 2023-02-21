# Maxhax

> This is the source code for maxhax.net.

## Getting started

Run the following procedure to run maxhax.net locally.

1. Install Docker—see https://docs.docker.com/get-docker/.

1. Run mbigras/maxhax Docker container.

   ```
   docker run -it -p 8080:80 --rm mbigras/maxhax
   ```

   Your output should look like the following.

   ```
   $ docker run -it -p 8080:80 --rm mbigras/maxhax
   # ...
   2023/02/20 21:47:09.891	INFO	Caddy serving static files on :80
   ```

   Notice that you map port 8080 on your laptop to port 80 in your container.

1. Send a request to localhost:8080.

   ```
   curl localhost:8080
   ```

   Your output should look like the following.

   ```
   $ curl localhost:8080
   # ...
   <h1>Maxhax</h1>
   <p>Welcome! This is Max's website.</p>
   </body>
   </html>
   ```

## Build and publish

The following procedure describes how to build and publish mbigras/maxhax Docker image.

1. Build mbigras/maxhax Docker image—tag based on git commit.

```
docker build -t mbigras/maxhax:$(git rev-parse HEAD) .
```

1. Tag latest image.

```
docker tag mbigras/maxhax:$(git rev-parse HEAD) mbigras/maxhax:latest
```

1. Push images.

```
docker push mbigras/maxhax:$(git rev-parse HEAD)
docker push mbigras/maxhax:latest
```

## Deployment

The following procedure describes how to deploy mbigras/maxhax Docker image.

1. Connect to maxhax.net server.

1. Navigate to maxhax.net directory.

   ```
   cd maxhax.net
   ```

1. Put secrets in .env file.

1. Download docker-compose.yml file.

   ```
   curl -sSL https://raw.githubusercontent.com/mbigras/maxhax/main/docker-compose.yml >docker-compose.yml
   ```

1. Update Docker containers.

   ```
   sudo docker compose up -d
   ```
