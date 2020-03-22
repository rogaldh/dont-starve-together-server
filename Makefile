all: build

build:
	docker build -t dst-server:$(VERSION) .

server:
	VERSION=$(VERSION) ./start.sh

server-no-mods:
	VERSION=$(VERSION) ./start-no-mods.sh
