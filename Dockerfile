FROM caddy:2.6.4-alpine
WORKDIR /var/www/maxhax
COPY index.html ./
ENTRYPOINT caddy file-server --listen :80
