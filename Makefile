.PHONY: build server

build:
	hugo -d docs -b https://curegit.github.io/nagoya-example/

server:
	hugo server --buildDrafts
