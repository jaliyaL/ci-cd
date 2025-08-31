# Use official Go image as build stage
FROM golang:1.22 AS builder

# Set working directory inside container
WORKDIR /app

# Copy go.mod and go.sum first (for caching dependencies)
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Build the Go app
RUN go build -o hello-world .

# Use a minimal image for runtime
FROM alpine:latest
WORKDIR /root/

# Copy the built binary from builder
COPY --from=builder /app/hello-world .

# Command to run the app
CMD ["./hello-world"]
