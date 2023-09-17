.PHONY: build server

build:
	rm -rf docs
	hugo -d docs --printUnusedTemplates

server:
	hugo server --buildDrafts --buildFuture --disableFastRender --printUnusedTemplates
