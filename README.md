# docker-svn-arch-rpi
SVN docker container for raspberry pi based on arch linux.

In order to use this container on your raspberry device you have to create a base container for arch linux first.
This can be done with: https://github.com/moby/moby/blob/master/contrib/mkimage-arch.sh

It could be you have to adjust the Dockerfile before running build.sh, the version checked in is for armv7h.

To execute  the docker container simply run
```
docker run -d -p 3690:3690 -v /data/path:/var/svn --name container-name sjoerd222/svn-arch-rpi
```

Please rename 'container-name' with something meaningful, e.g. 'svn'. Replace /data/path with the path for your repository data.

The docker images uses svnserve. You can refer to the [Subversion article](https://wiki.archlinux.org/index.php/Subversion) on the arch linux wiki for more information.

## Create repositories

To create a new repository you need to *bash* into the container first

```
docker exec -i -t svn /bin/bash 
```

And then you can actually create your repository with 

```
svnadmin create /var/svn/REPO_NAME

```
Replace 'REPO_NAME' with something meaningful, e.g. 'my-awesome-project'.

Don't forget to add some security! By default everything is accessible so be sure to add a password.

## Connect to repository

The url to your repository is: svn://YOUR_DOMAIN_OR_IP_ADDRESS/REPO_NAME



