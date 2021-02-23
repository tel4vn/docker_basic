# build stage
FROM golang:alpine AS builder
ADD . /src/
RUN cd /src && go build hello.go

# final stage
FROM alpine
WORKDIR /app
COPY --from=builder /src/hello /app/
ENTRYPOINT ./hello