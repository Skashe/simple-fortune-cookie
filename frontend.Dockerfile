FROM ubuntu:latest

RUN apt update \
    && apt install -y \
    golang-go 

COPY ./frontend ./frontend
RUN cd frontend \
    && go build

CMD go run frontend