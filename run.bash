#!/bin/bash -x

./install.sh
# validate bin

cd ${HOME}/dontstarvetogether_dedicated_server/bin
#https://forums.kleientertainment.com/forums/topic/59204-server-stopped-working-caves-beta/

run_shared=(./dontstarve_dedicated_server_nullrenderer)
run_shared+=(-cluster "DediServer")
run_shared+=(-monitor_parent_process $$)
"${run_shared[@]}" -shard Caves  | sed 's/^/Caves: /' &
"${run_shared[@]}" -shard Master | sed 's/^/Master: /'
