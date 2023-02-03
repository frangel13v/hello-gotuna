FROM golang:alpine AS builder
WORKDIR /opt/gotuna
COPY . .
RUN go build examples/fullapp/cmd/main.go

FROM alpine AS runtime
WORKDIR /opt/gotuna
COPY --from=builder /opt/gotuna/main .
CMD ["./main"]
