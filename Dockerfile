# Пишу этот комментарий для создания изменений, чтобы сделать PR)
FROM golang:1.22.0

WORKDIR /app

COPY go.mod go.sum ./

COPY . .

RUN go mod tidy

RUN go build -o /my_app

CMD ["/my_app"]