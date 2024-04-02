FROM golang:1.18-alpine

WORKDIR /goproject

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

RUN go build -o build/fizzbuzz

CMD ["./build/fizzbuzz", "serve"]
