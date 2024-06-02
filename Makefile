.PHONY: build server

build:
	rm -rf docs
	hugo -d docs --printUnusedTemplates --printPathWarnings

server:
	hugo server --buildDrafts --buildFuture --disableFastRender --printUnusedTemplates --printPathWarnings
