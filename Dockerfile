FROM ubuntu:20.10

RUN apt-get update && apt-get install -y --no-install-recommends wget adduser libfontconfig1
RUN wget --no-check-certificate https://dl.grafana.com/oss/release/grafana_7.3.5_amd64.deb
RUN dpkg -i grafana_7.3.5_amd64.deb

ADD start.sh /

RUN "/start.sh"

