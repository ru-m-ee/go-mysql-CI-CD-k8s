# Stage 1: Build
FROM golang:1.22.2-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o go-mysql-crud .

# Stage 2: Run
FROM alpine:3.19

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY --from=builder /app/go-mysql-crud .

USER appuser

EXPOSE 8005

ENTRYPOINT ["/app/go-mysql-crud"]