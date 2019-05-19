all: build

build:
	docker build -t dst-server:$(VERSION) .

server:
	VERSION=$(VERSION) DST_SERVER_PASSWORD="${DST_SERVER_PASSWORD}" DST_CLUSTER_TOKEN="${DST_CLUSTER_TOKEN}" DST_SERVER_SECRET="${DST_SERVER_SECRET}" DST_SERVER_NAME="${DST_SERVER_NAME}" DST_SERVER_DESC="${DST_SERVER_DESC}" ./start.sh

# Links
# - https://github.com/CM2Walki/steamcmd
# - https://developer.valvesoftware.com/wiki/SteamCMD
# - https://developer.valvesoftware.com/wiki/Dedicated_Servers_List
# - https://forums.kleientertainment.com/forums/topic/64552-dedicated-server-settings-guide/
# - https://forums.kleientertainment.com/forums/topic/64441-dedicated-server-quick-setup-guide-linux/
