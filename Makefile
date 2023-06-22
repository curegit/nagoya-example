.PHONY: build server

build:
	hugo -d docs --cleanDestinationDir -b https://curegit.github.io/nagoya-example/

server:
	hugo server --buildDrafts --disableFastRender
