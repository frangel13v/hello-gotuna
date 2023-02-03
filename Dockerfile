FROM golang:bullseye
WORKDIR /opt/gotuna
CMD ["./main"]
COPY . .
RUN go build examples/fullapp/cmd/main.go
