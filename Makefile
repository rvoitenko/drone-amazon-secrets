SHELL:=/bin/bash # Use bash syntax

.PHONY: help release docker all

release: ## release
			  cd cmd/drone-amazon-secrets/; CGO_ENABLED=0 go build -o ../../release/linux/amd64/drone-amazon-secrets

docker: ## docker
			  docker build -t amazon-secrets -f docker/Dockerfile .

all: release docker
