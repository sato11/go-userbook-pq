.PHONY: deps
deps:
	go mod download

.PHONY: devel-deps
devel-deps:
	go get golang.org/x/lint/golint

.PHONY: test
test:
	go test ./...

.PHONY: lint
lint:
	go vet ./...
	golint -set_exit_status ./...

.PHONY: clean
clean:
	rm -rf ./postgres/data

.PHONY: build
build:
	GOOS=linux GOARCH=amd64 go build

.PHONY: run
run: build
	./go-userbook-pq
