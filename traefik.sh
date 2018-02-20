# /bin/bash

docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/traefik.toml:/traefik.toml -v $PWD/acme.json:/acme.json -p 80:80 -p 443:443 -l traefik.frontend.rule=Host:monitoring.hirt.one -l traefik.port=8080 --network proxy --name traefik traefik:1.5.2-alpine --docker