# docker-shells

docker-shells is a collection of shells inside docker containers. You can use shells with various versions and variouse os images.

# Supported platforms (at now)

* amd64
* docker (tested on >=19.0)
* Linux (kernel >=4.19)

## shells

| name | license | tested condition |
| --- | --- | --- |
| bash | GPLv3 | manual |
| dash | 3-clause BSD | manual |
| busybox sh | GPLv2 | manual |
| ksh | EPL-1.0 | manual |
| mksh | MirOS licence + 3-clause BSD | manual |
| zsh | Mit-like license | manual |
| yash | GPLv2 | manual |

## base images

All debian image is based on \*-slim.

| shell \\ image | buster | bullseye | archlinux | gentoo | centos:7 | centos:8 |
| --- | --- | --- | --- | --- | --- | --- |
| bash | x | x | x | x | x | x |
| dash | x | x | x | x | | |
| busybox sh | x | x | x | x | | |
| ksh-93 | x | | x | | | x |
| ksh-2020 | | x | x | | | |
| mksh | x | x | x | x | x | x |
| tcsh | x | x | x | x | x | x |
| zsh | x | x | x | x | x | x |
| posh | x | x | | | | |
| yash | x | x | | | | |

# Docker images

Following docker images are built on and pushed from this repository.

`[okadash/bash](https://hub.docker.com/repository/docker/okadash/bash)`
`[okadash/dash](https://hub.docker.com/repository/docker/okadash/dash)`
`[okadash/busybox sh](https://hub.docker.com/repository/docker/okadash/busybox)`
`[okadash/ksh](https://hub.docker.com/repository/docker/okadash/ksh)`
`[okadash/mksh](https://hub.docker.com/repository/docker/okadash/mksh)`
`[okadash/tcsh](https://hub.docker.com/repository/docker/okadash/tcsh)`
`[okadash/zsh](https://hub.docker.com/repository/docker/okadash/zsh)`
`[okadash/posh](https://hub.docker.com/repository/docker/okadash/posh)`
`[okadash/yash](https://hub.docker.com/repository/docker/okadash/yash)`

If you need to build your own images, set DOCKER_USERNAME environmental variables and run build_images.sh.

```
cd path_to_this_repo
DOCKER_USERNAME=localimage ./build_images.sh
```


# Usage

```
$ echo cat /etc/os-release | docker run -i okadash/bash:bullseye
PRETTY_NAME="Debian GNU/Linux bullseye/sid"
NAME="Debian GNU/Linux"
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
```

```
$ docker run -it okadash/bash:centos7
$ cat anaconda-post.log | grep -E \^\ \+Erasing | wc -l
25
```

```
$ cat some_awesome_posix_shell_script.sh | docker run -i okadash/dash
```

See also our [Github repo](https://github.com/okadash/docker-shells).
