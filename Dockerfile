FROM golang:1.14.2

WORKDIR /app

COPY go.mod go.sum Makefile ./
RUN make deps

COPY . .
