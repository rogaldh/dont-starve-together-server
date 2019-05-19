FROM cm2network/steamcmd:root as steamcmd
FROM debian:stretch-slim

RUN set -x
RUN dpkg --add-architecture i386
RUN apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
    libstdc++6:i386 \
    libgcc1:i386 \
		libcurl4-gnutls-dev:i386 \
		ca-certificates

RUN mkdir -p /home/steam \
  && groupadd steam \
  && useradd -g steam -d /home/steam steam \
  && chmod -R 0775 /home/steam \
  && chown steam:steam /home/steam

COPY --from=steamcmd /home/steam/steamcmd /home/steam/steamcmd
RUN chown -R steam:steam /home/steam/steamcmd

WORKDIR /home/steam
USER steam

RUN mkdir -p ~/.klei/DoNotStarveTogether/DediServer/Master \
  && mkdir -p ~/.klei/DoNotStarveTogether/DediServer/Caves

RUN mkdir -p ~/dontstarvetogether_dedicated_server/mods \
  && chown -R steam:steam ~/dontstarvetogether_dedicated_server

RUN ~/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/dontstarvetogether_dedicated_server +app_update 343050 +quit

ENTRYPOINT [ "/home/steam/.klei/DoNotStarveTogether/DediServer/server.sh" ]
