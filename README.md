## dst server

### Configure

Copy config which could be generated as described [here](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) to the `conf.d` directory.

`_conf.d` directory contains configuration sample.

`_server.d` directory contains mods configuration sample.

### Backup

```
export VOL_VERSION=<volume version>
docker run -i --volume dst_server${VOL_VERSION}:/root/.klei --mount type=bind,source=/root/backup,target=/root/backup -t debian:stretch-slim /bin/bash
```

### Client mods

`1608191708, 351325790, 376333686, 714735102, 345692228, 727774324`

## Links

- https://github.com/CM2Walki/steamcmd
- https://developer.valvesoftware.com/wiki/SteamCMD
- https://developer.valvesoftware.com/wiki/Dedicated_Servers_List
- https://forums.kleientertainment.com/forums/topic/64552-dedicated-server-settings-guide/
- https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/
- https://dontstarve.fandom.com/wiki/Guides/Simple_Dedicated_Server_Setup#Playing
