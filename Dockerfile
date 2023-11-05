FROM caddy:2.7.5-alpine
WORKDIR /var/www/maxhax
COPY index.html ./
ENTRYPOINT caddy file-server --listen :80
