docker-torbox
=============

docker-torbox is a set of Dockerfile and its dependencies to create Docker image of Tor, an Anonymyzing proxy. 

More information about Tor can be found at http://torproject.org/

There are two kind of image definitions in this repository.

torbox
------
This version provides SOCKS proxy. Please note that this does not automatically provide browser access through Tor; it is expected that it is configured elsewhere. (and there are far easier solution if that's all you needed.)

This is more useful for application such as Bitmessage and others that has settings for SOCKS.

Pre-built build is available at:
https://registry.hub.docker.com/u/hsaito/torbox/

torbox-relay
------------
This version does not provide SOCKS proxy, but provides relay capability.

Pre-built build is available at:
https://registry.hub.docker.com/u/hsaito/torbox-relay/

torbox-hidden
-------------
This version provides hidden service. It currently used lighttpd. Tor behaviors are different from above two as this container will try to obtain .onion address when it is not present at first run. Container log will display effective .onion address every time it is started.

Pre-built build is available at:
https://registry.hub.docker.com/u/hsaito/torbox-hidden/
