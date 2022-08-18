FROM golang:latest

WORKDIR /go/src/app
COPY . .
run go build .
ENTRYPOINT ["go", "run", "."]




# builder image
# FROM golang:1.16 as builder
# RUN mkdir /backend
# ADD backend /go/backend/
# WORKDIR /go/backend
# RUN mkdir /go/backend/build
# ADD backend/*.go go/backend/build/
# WORKDIR go/backend/build
# RUN CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .

# CMD go run backend

#Below is currently not working. Could be implemented if we have more time.

# generate clean, final image for end users
# FROM alpine:3.11.3
# COPY --from=builder /build/golang-memtest .
# RUN apt-get update \
#     && apt-get install -y golang.go \
#     && go run backend