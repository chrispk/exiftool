# inspired by https://hub.docker.com/r/davidanson/exiftool
# exiftool install instructions: https://exiftool.org/install.html

FROM alpine:latest

RUN apk add perl

WORKDIR /download

ADD https://exiftool.org/Image-ExifTool-13.10.tar.gz .

WORKDIR /extract

RUN gzip -dc /download/Image-ExifTool-13.10.tar.gz | tar -xf -

WORKDIR /workdir

ENTRYPOINT ["/extract/Image-ExifTool-13.10/exiftool"]