#!/bin/sh +x

envsubst < conf.d/_cluster_token.txt > conf.d/cluster_token.txt
envsubst < conf.d/_cluster.ini > conf.d/cluster.ini

docker run -di \
  --volume dontstarvetogether:/home/steam/dontstarvetogether_dedicated_server \
  --mount type=bind,source="$(pwd)/conf.d",target=/home/steam/.klei/DoNotStarveTogether/DediServer \
  --mount type=bind,source="$(pwd)/server.d/mods/modsettings.lua",target=/home/steam/dontstarvetogether_dedicated_server/mods/modsettings.lua \
  --mount type=bind,source="$(pwd)/server.d/mods/modoverrides.lua",target=/home/steam/dontstarvetogether_dedicated_server/mods/modoverrides.lua \
  --mount type=bind,source="$(pwd)/server.d/mods/dedicated_server_mods_setup.lua",target=/home/steam/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua \
  -p 11001:11001 \
  -p 27019:27019 \
  -p 8769:8769 \
  -p 10889:10889 \
  -t dst-server:${VERSION}
