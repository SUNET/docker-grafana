FROM ubuntu:21.04

RUN apt-get update && apt-get install -y --no-install-recommends wget adduser libfontconfig1 ca-certificates
RUN wget -q https://dl.grafana.com/oss/release/grafana_7.5.13_amd64.deb
RUN dpkg -i grafana_7.5.13_amd64.deb

ADD start.sh /

EXPOSE 443

ENTRYPOINT "/start.sh"

