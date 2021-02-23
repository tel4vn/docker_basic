FROM golang:alpine
WORKDIR /app
ADD . /app
RUN cd /app && go build hello.go
ENTRYPOINT ./hello