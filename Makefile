all: build

build:
	docker build -t dst-server:$(VERSION) .

server:
	VOL_VERSION=$(VOL_VERSION) VERSION=$(VERSION) ./start.sh

server-no-mods:
	VOL_VERSION=$(VOL_VERSION) VERSION=$(VERSION) ./start-no-mods.sh
