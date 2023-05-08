ifdef TFSTATE_BUCKET
BUCKET := $(TFSTATE_BUCKET)
else
BUCKET := go-lambda-aws-api-dev
endif

build:
	GOOS=linux GOARCH=amd64 go build -v -ldflags '-d -s -w' -a -tags netgo -installsuffix netgo -o build/bin/app .

format:
	terraform fmt --recursive
	go fmt

deploy: build init apply

init:
	terraform -chdir=tf-resources init -backend-config="bucket=${BUCKET}"

plan:
	terraform -chdir=tf-resources plan

apply:
	terraform -chdir=tf-resources apply

destroy:
	terraform -chdir=tf-resources destroy