#stage 1
FROM golang as builder

COPY . /src
WORKDIR /src
CMD env CGO_ENABLED=0 go build -o app main.go duet.go home.go scale.go

#stage 2
FROM scratch
WORKDIR /src
COPY --from=builder /src .
ENTRYPOINT ["./app"]
