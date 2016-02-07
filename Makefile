IMAGE_NAME := waja/jingo
JONGO_EXPORT_PATH := $$(pwd)/../docker-jingo

build:
	docker build --rm -t $(IMAGE_NAME) .

run:
	@echo docker run --rm -v $(JONGO_EXPORT_PATH)/config/:/opt/jingo/config/ -v $(JONGO_EXPORT_PATH)/data/:/opt/wiki-content -e 'JINGO_APPLICATION_TITLE=My Amazing Wiki' -p 8080:8080 $(IMAGE_NAME)

shell:
	docker run --rm -it -v $(JONGO_EXPORT_PATH):/srv --entrypoint bash -p 8080:8080 $(IMAGE_NAME) -l
