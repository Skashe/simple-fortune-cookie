FROM golang:latest

WORKDIR /go/src/app
COPY . .
run go build .
ENTRYPOINT ["go", "run", "."]
