FROM golang:1.7-alpine
MAINTAINER gian@dynamicobjx.com

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl
RUN go get github.com/tools/godep
RUN go get github.com/gin-gonic/gin

CMD go version

