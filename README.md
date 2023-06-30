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


### Server Mods

- [Ocean Currents](https://steamcommunity.com/sharedfiles/filedetails/?id=2485482489)
- [Show Me](https://steamcommunity.com/sharedfiles/filedetails/?id=666155465)
- [Simple Health Bar DST](https://steamcommunity.com/sharedfiles/filedetails/?id=1207269058)
- [Global Positions](https://steamcommunity.com/sharedfiles/filedetails/?id=378160973)


#### Fordge event

- [ReForged](https://steamcommunity.com/sharedfiles/filedetails/?id=1938752683)
- [Re-Gorge-itated](https://steamcommunity.com/sharedfiles/filedetails/?id=1918927570)


### Client mods

- [ActionQueue Reborn](https://steamcommunity.com/workshop/filedetails/?id=1608191708)
- [Geometric Placement](https://steamcommunity.com/sharedfiles/filedetails/?id=351325790)
- [Combined Status](https://steamcommunity.com/sharedfiles/filedetails/?id=376333686)
- [Waypoint](https://steamcommunity.com/sharedfiles/filedetails/?id=714735102)
- [Minimap HUD](https://steamcommunity.com/sharedfiles/filedetails/?id=345692228)
- [Craft Pot [DS, ROG, SW, DST]](https://steamcommunity.com/sharedfiles/filedetails/?id=727774324)
- [Item Info](https://steamcommunity.com/sharedfiles/filedetails/?id=836583293)
- [?Map controls Removal](https://steamcommunity.com/sharedfiles/filedetails/?id=537685330)
- [?Snapping tills](https://steamcommunity.com/sharedfiles/filedetails/?id=2302837868)


## Links

- https://github.com/CM2Walki/steamcmd
- https://developer.valvesoftware.com/wiki/SteamCMD
- https://developer.valvesoftware.com/wiki/Dedicated_Servers_List
- https://forums.kleientertainment.com/forums/topic/64552-dedicated-server-settings-guide/
- https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/
