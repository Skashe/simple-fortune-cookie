FROM ubuntu:latest

RUN apt update \
    && apt install -y \
    golang-go 

COPY ./backend ./backend
RUN cd backend \
    && go build

CMD go run backend
