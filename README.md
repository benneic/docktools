docktools
===

Docker alpine image with:
- bash shell
- tools for network testing
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
When using the default command the container will quit and remove the container when you exit the shell. You .ssh keys are also mounted inside the container for convenienve of using git etc.

The command `make run` can be used to keep the container deamonised in the background.


Alternatively, pull it from the Docker Hub:

```
docker pull benneic/docktools
```
