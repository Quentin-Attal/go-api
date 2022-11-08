FROM golang:latest as base

# Create another stage called "dev" that is based off of our "base" stage (so we have golang available to us)
FROM base as dev

RUN go install github.com/cosmtrek/air@latest

# Run the air command in the directory where our code will live
WORKDIR /opt/app/api
CMD ["air", "-c" ,".air.toml"]