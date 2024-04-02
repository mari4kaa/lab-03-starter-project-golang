FROM golang:1.21-alpine AS build

WORKDIR /goproject

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

RUN go build -o build/fizzbuzz

FROM scratch

WORKDIR /goproject

COPY --from=build /goproject/templates templates

COPY --from=build /goproject/build/fizzbuzz /fizzbuzz

CMD ["/fizzbuzz", "serve"]
