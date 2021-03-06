build:
	go build -o bin/check_key_api main.go
run:
	go run main.go
compile:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=amd64 go build -o bin/check_key_api-linux-amd64 main.go
	GOOS=linux GOARCH=arm64 go build -o bin/check_key_api-linux-arm64 main.go
all: build compile