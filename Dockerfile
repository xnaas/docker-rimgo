FROM golang:alpine AS src
WORKDIR /src
RUN apk --no-cache add git ca-certificates
RUN git clone https://codeberg.org/video-prize-ranch/rimgo .
RUN go mod tidy
RUN CGO_ENABLED=0 go build

FROM scratch
COPY --from=src /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=src /src/rimgo /bin/rimgo

EXPOSE 3000

CMD ["rimgo"]
