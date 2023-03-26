# docker image based on caddy image

FROM caddy:2.0.0-alpine

# workdir
WORKDIR /usr/share/caddy

# copy all files

COPY . .

# ecpose port
EXPOSE 80

# run CADDY
CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]

