FROM ubuntu:latest
MAINTAINER Hideki Saito <hideki@hidekisaito.com>
RUN echo "deb http://deb.torproject.org/torproject.org saucy main" >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv 886DDD89
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
RUN apt-get update && apt-get install -y tor
ADD files/torrc /etc/tor/torrc
EXPOSE 9050
ENTRYPOINT ["tor"]
