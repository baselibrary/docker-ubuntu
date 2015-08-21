DOCKER = docker
REPO = git@github.com:baselibrary/docker-ubuntu.git
TAGS = 14.04

all: release

sync-branches:
	git fetch $(REPO) master
	@$(foreach tag, $(TAGS), git branch -f $(tag) FETCH_HEAD;)
	@$(foreach tag, $(TAGS), git push $(REPO) $(tag);)
	@$(foreach tag, $(TAGS), git branch -D $(tag);)

release: $(TAGS)
	$(DOCKER) push quay.io/baselibrary/ubuntu

build: $(TAGS)

.PHONY: $(TAGS)
$(TAGS):
	$(DOCKER) build -t quay.io/baselibrary/ubuntu:$@ $@
