FROM ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends wget adduser libfontconfig1 ca-certificates musl
RUN wget https://dl.grafana.com/oss/release/grafana_10.1.4_amd64.deb
RUN dpkg -i grafana_10.1.4_amd64.deb

ADD start.sh /

EXPOSE 443

ENTRYPOINT "/start.sh"

