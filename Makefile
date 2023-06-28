.PHONY: build server

build:
	hugo -d docs --cleanDestinationDir --printUnusedTemplates

server:
	hugo server --buildDrafts --disableFastRender --printUnusedTemplates
