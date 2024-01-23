FROM cm2network/steamcmd

LABEL org.opencontainers.image.authors="Sebastian Schmidt"
LABEL org.opencontainers.image.source="https://github.com/jammsen/docker-palworld-dedicated-server"

ENV TIMEZONE=Asia/Seoul \
    DEBIAN_FRONTEND=noninteractive \
    PUID=0 \
    PGID=0 \
    ALWAYS_UPDATE_ON_START=true \
    MAX_PLAYERS=4 \
    MULTITHREAD_ENABLED=true \
    RCON_ENABLED=true \
    RCON_PORT=25575 \
    PUBLIC_IP=13.125.243.21 \
    PUBLIC_PORT=8211 \
    SERVER_NAME=charon-docker-generated-123 \
    SERVER_DESCRIPTION="Palworld-Dedicated-Server running in Docker by charon" \
    SERVER_PASSWORD=etech0123 \
    ADMIN_PASSWORD=etech0123


VOLUME [ "/palworld" ]

EXPOSE 8211/udp
EXPOSE 25575/tcp

ADD --chmod=777 servermanager.sh /servermanager.sh

CMD ["/servermanager.sh"]
