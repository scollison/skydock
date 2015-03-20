FROM golang

# go get to download all the deps
RUN go get -u github.com/scollison/skydock

ADD . /go/src/github.com/scollison/skydock
ADD plugins/ /plugins

RUN cd /go/src/github.com/scollison/skydock && go install . ./...

ENTRYPOINT ["/go/bin/skydock"]
