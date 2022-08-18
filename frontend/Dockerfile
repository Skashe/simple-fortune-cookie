FROM golang:latest

WORKDIR /go/src/app
COPY . .
run go build .
ENTRYPOINT ["go", "run", "."]

# builder image
# FROM golang:1.16 as builder
# RUN mkdir /frontend
# ADD frontend /go/frontend/
# WORKDIR /go/frontend
# RUN mkdir /go/frontend/build
# ADD frontend/*.go go/frontend/build/
# WORKDIR go/frontend/build

# COPY /frontend/ .

# RUN go build 
# RUN ls

# RUN CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .

# CMD go run frontend

#Below is currently not working. Could be implemented if we have more time.

# generate clean, final image for end users
# FROM alpine:3.11.3
# COPY --from=builder /build/golang-memtest .
# RUN apt-get update \
#     && apt-get install -y golang.go \
#     && go run backend