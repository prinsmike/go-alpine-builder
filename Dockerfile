FROM golang:1.12-alpine
LABEL maintainer "Michael Prinsloo <github.com/prinsmike>"

ENV GO111MODULE on

RUN apk update && \
	apk add bash git openssh ca-certificates

WORKDIR /go/src/app

CMD ["./build.sh"]
