FROM hsaito/torbox
MAINTAINER Hideki Saito <hideki@hidekisaito.com>
ADD files/torrc /etc/tor/torrc
EXPOSE 9001
ENTRYPOINT ["sudo -u debian-tor tor"]
ADD files/startup.sh /startup.sh
ENTRYPOINT /startup.sh
