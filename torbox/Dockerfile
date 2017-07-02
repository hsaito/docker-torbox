FROM debian:stable
MAINTAINER Hideki Saito <hideki@hidekisaito.com>
RUN apt-get update && apt-get install -y gnupg
RUN /usr/bin/gpg --keyserver pgp.mit.edu --recv 74A941BA219EC810
RUN /usr/bin/gpg --export 74A941BA219EC810 | apt-key add -
RUN files/tor.list /etc/apt/sources.list.d/
RUN apt-get update && apt-get install -y tor sudo
ADD files/torrc /etc/tor/torrc
EXPOSE 9050
ADD files/startup.sh /startup.sh
ENTRYPOINT /startup.sh

