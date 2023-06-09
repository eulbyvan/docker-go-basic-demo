FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . .

ENV PORT=8080

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]