FROM hsaito/torbox
MAINTAINER Hideki Saito <hideki@hidekisaito.com>
RUN apt-get install -y openssh-server apache2
ADD files/torrc /etc/tor/torrc
RUN mkdir -p /var/run/sshd
RUN echo root:changeme | chpasswd
ADD files/startup.sh /startup.sh
ADD files/sshd-key-gen.sh /sshd-key-gen.sh
ENTRYPOINT /startup.sh
