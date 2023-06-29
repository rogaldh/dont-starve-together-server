#!/bin/sh -e

steamcmd_dir=${HOME}/steamcmd

${steamcmd_dir}/steamcmd.sh +force_install_dir "${HOME}/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 validate +quit
