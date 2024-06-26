FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN go test ./...

ENV REQUEST_ORIGIN=http://localhost:5050

CMD ["./server"]