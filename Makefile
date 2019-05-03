.PHONY : all
all: build

VERSION := 1.0.0

push:
	@docker tag restarter-cron "gcr.io/${GCLOUD_PROJECT}/restarter-cron:v$(VERSION)"
	@docker push "gcr.io/${GCLOUD_PROJECT}/restarter-cron:v$(VERSION)"

build:
	@docker build --tag=restarter-cron .

run:
	@docker run -it "gcr.io/${GCLOUD_PROJECT}/restarter-cron:v$(VERSION)"
