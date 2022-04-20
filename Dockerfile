FROM golang:latest

RUN go install mvdan.cc/sh/v3/cmd/shfmt@v3

ENTRYPOINT ["shfmt"]