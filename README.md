# docker-svn-arch-rpi
SVN docker container for raspberry pi based on arch linux.

In order to use this container on your raspberry device you have to create a base container for arch linux first.
This can be done with: https://github.com/moby/moby/blob/master/contrib/mkimage-arch.sh

It could be you have to adjust the Dockerfile before runing build.sh, the version checked in is for armv7h.

To execute  the docker container simply run
```
docker run -d -p 3690:3690 -v /data/path:/var/svn --name container-name sjoerd222/svn-arch-rpi
```

Please rename 'container-name' with something meaningful, e.g. 'svn'.
