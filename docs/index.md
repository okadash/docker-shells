# About

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

## target / image size comparison

| name | buster | bullseye | archlinux | gentoo | centos:7 | centos:8 | alpine |
| --- | --- | --- | --- | --- | --- | --- | --- |
| bash | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/alpine?label=) |
| dash | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/gentoo?label=) | | | |
| busybox sh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/gentoo?label=) | | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/alpine?label=) |
| ksh-93 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/debian-buster-slim?label=) | | | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/centos8?label=) |
| ksh-2020 | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/archlinux?label=) | | | |
| mksh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/alpine?label=) |
| tcsh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/alpine?label=) |
| zsh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/alpine?label=) |
| posh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/posh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/posh/debian-bullseye-slim?label=) | | | | |
| yash | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/yash/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/yash/debian-bullseye-slim?label=) | | | | |


# Docker images

Following docker images are built on and pushed from this repository.

[okadash/bash](https://hub.docker.com/repository/docker/okadash/bash), [okadash/dash](https://hub.docker.com/repository/docker/okadash/dash), [okadash/busybox sh](https://hub.docker.com/repository/docker/okadash/busybox), [okadash/ksh](https://hub.docker.com/repository/docker/okadash/ksh), [okadash/mksh](https://hub.docker.com/repository/docker/okadash/mksh), [okadash/tcsh](https://hub.docker.com/repository/docker/okadash/tcsh), [okadash/zsh](https://hub.docker.com/repository/docker/okadash/zsh), [okadash/posh](https://hub.docker.com/repository/docker/okadash/posh), [okadash/yash](https://hub.docker.com/repository/docker/okadash/yash)

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
