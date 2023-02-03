FROM golang:bullseye AS builder
WORKDIR /opt/gotuna
COPY . .
RUN go build examples/fullapp/cmd/main.go

FROM debian:11.6-slim AS runtime
WORKDIR /opt/gotuna
COPY --from=builder /opt/gotuna/main .
CMD ["./main"]
