all: build

build:
	docker build -t dst-server:$(VERSION) .

server:
	scripts/check-version.sh
	VOL_VERSION=$(VOL_VERSION) VERSION=$(VERSION) ./scripts/start.sh

server-no-mods:
	scripts/check-version.sh
	VOL_VERSION=$(VOL_VERSION) VERSION=$(VERSION) ./scripts/start-no-mods.sh
