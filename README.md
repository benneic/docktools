docktools
===

TLDR;
```
docker run --privileged --rm -it -v ~/.ssh:/root/.ssh:ro benneic/docktools:latest bash
bash-5.0# nmap www.google.com

Starting Nmap 7.70 ( https://nmap.org ) at 2019-06-30 10:18 UTC
Nmap scan report for www.google.com (216.58.196.132)
Host is up (0.00049s latency).
Other addresses for www.google.com (not scanned): 2404:6800:4006:805::2004
rDNS record for 216.58.196.132: syd15s04-in-f4.1e100.net
Not shown: 998 closed ports
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 22.08 seconds
bash-5.0# exit
exit
```

## Docker alpine image with networking tools
- bash shell
- ethtool, nmap, netcat, tcpdump, net-tools, iperf, iputils, iproute2
- apache bench for load testing
- h2load for http2 load testing
- git

```
REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
benneic/docktools   latest              763ce112f63f        4 seconds ago       51.6MB
```

Install
---

Build and run it yourself:

```
git clone https://github.com/benneic/docktools.git
cd docktools
make
```
When using the default command the container will quit and remove the container when you exit the shell. Your .ssh keys are also mounted inside the container for your convenience.

The command `make run` can be used to keep the container deamonised in the background.

Alternatively, pull from Docker Hub:
```
docker pull benneic/docktools
```
