FROM ubuntu:latest
RUN apt update
RUN apt install maven -y
RUN mkdir /app
