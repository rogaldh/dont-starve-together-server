FROM cm2network/steamcmd:root as steamcmd
FROM debian:stable-20230612-slim

RUN set -x
RUN dpkg --add-architecture i386
RUN apt-get update \
&& apt-get install -y --no-install-recommends --no-install-suggests \
  libstdc++6:i386 \
  libgcc1:i386 \
  libcurl4-gnutls-dev:i386 \
  ca-certificates \
  locales

RUN mkdir -p /home/steam \
  && groupadd steam \
  && useradd -g steam -d /home/steam steam \
  && chmod -R 0775 /home/steam \
  && chown steam:steam /home/steam

RUN sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen \
  && locale-gen \
  && touch /home/steam/.profile \
  && chown steam:steam /home/steam/.profile \
  && echo "export LC_ALL=en_US.UTF-8" >> /home/steam/.profile \
  && echo "export LANG=en_US.UTF-8" >> /home/steam/.profile \
  && echo "export LANGUAGE=en_US.UTF-8" >> /home/steam/.profile

COPY --from=steamcmd /home/steam/steamcmd /home/steam/steamcmd
RUN chown -R steam:steam /home/steam/steamcmd

RUN mkdir -p /home/steam/.klei/DoNotStarveTogether/DediServer

COPY ./conf.d/ /home/steam/.klei/DoNotStarveTogether/DediServer
RUN chown -R steam:steam /home/steam/.klei

COPY ./scripts/install.sh /home/steam
COPY ./run.bash /home/steam
RUN chown steam:steam /home/steam/install.sh \
  && chown steam:steam /home/steam/run.bash

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/dontstarvetogether_dedicated_server +app_update 343050 +quit \
  && chown -R steam:steam /home/steam/dontstarvetogether_dedicated_server

COPY ./server.d /home/steam/dontstarvetogether_dedicated_server
RUN chown -R steam:steam /home/steam/dontstarvetogether_dedicated_server/mods

WORKDIR /home/steam
USER steam

ENTRYPOINT [ "/home/steam/run.bash" ]
