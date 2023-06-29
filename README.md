### Configure

Copy config which could be generated as described [here](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) to the `conf.d` directory.

`_conf.d` directory contains configuration sample.

`_server.d` directory contains mods configuration sample.

```sh
scp DSTConfig <%user%>@<%server%>:/home/<%user%>/dont-starve-together-server/conf.d
cp -r _server.d server.d
```

### Build Image

```sh
VERSION=<%build_version%> make build
```

### Launch

```sh
VERSION=<%build_version%> VOL_VERSION=<%volume_version%> make server
```


### Backup

```
export VOL_VERSION=<volume version>
docker run -i --volume dst_server${VOL_VERSION}:/root/.klei --mount type=bind,source=/root/backup,target=/root/backup -t debian:stretch-slim /bin/bash
```

### Recommended mods for client

- [1608191708](https://steamcommunity.com/workshop/filedetails/?id=1608191708)
- [351325790](https://steamcommunity.com/sharedfiles/filedetails/?id=351325790)
- [376333686](https://steamcommunity.com/sharedfiles/filedetails/?id=376333686)
- [714735102](https://steamcommunity.com/sharedfiles/filedetails/?id=714735102)
- [345692228](https://steamcommunity.com/sharedfiles/filedetails/?id=345692228)
- [727774324](https://steamcommunity.com/sharedfiles/filedetails/?id=727774324)
- [1901927445](https://steamcommunity.com/sharedfiles/filedetails/?id=1901927445)

## Links

- https://github.com/CM2Walki/steamcmd
- https://developer.valvesoftware.com/wiki/SteamCMD
- https://developer.valvesoftware.com/wiki/Dedicated_Servers_List
- https://forums.kleientertainment.com/forums/topic/64552-dedicated-server-settings-guide/
- https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/
