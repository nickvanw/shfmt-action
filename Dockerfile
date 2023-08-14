FROM public.ecr.aws/docker/library/golang:1.21.0

RUN go install mvdan.cc/sh/v3/cmd/shfmt@v3

ENTRYPOINT ["shfmt"]
