FROM python:3

RUN pip install flask

RUN mkdir -p /corp/app
WORKDIR /corp/app
COPY main.py .
ENV FLASK_APP=/core/app/main.py

ENV APP_NAME=MyApp.DevOps
ENV APP_VERSION=v1.0.0

CMD ["flask", "run", "--host=127.0.0.1"]



#FROM golang:1.13 as builder
#ENV CGO_ENABLED=0
#WORKDIR /app
#COPY . /app/
#RUN go build -o go-app
#
#FROM alpine:latest as certs
#RUN apk --no-cache add ca-certificates
#
#FROM scratch
#COPY --from=certs /etc/ssl/certs/* /etc/ssl/certs/
#ENTRYPOINT ["/go-app"]
#COPY --from=builder /app/go-app /
