# About

**[docker-shells](https://okadash.github.io/docker-shells/)** is a collection of shells inside docker containers. You can use shells with various versions and various os images.

All docker images can be pulled from [DockerHub](https://hub.docker.com/u/okadash) and each image has /bin/sh as a symbolic link for target shells (bash, dash, ksh, busybox, etc.).


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

## get images

```
docker pull okadash/ksh:buster
```

## target / image size comparison

| name | buster | bullseye | archlinux | gentoo | centos:7 | centos:8 | alpine |
| --- | --- | --- | --- | --- | --- | --- | --- |
| bash | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/bash/alpine?label=) |
| dash | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/gentoo?label=) | | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/dash/alpine?label=) |
| busybox sh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/gentoo?label=) | | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/busybox/alpine?label=) |
| ksh-93 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/debian-buster-slim?label=) | | | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/centos8?label=) |
| ksh-2020 | | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/ksh/archlinux?label=) | | | |
| mksh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/alpine?label=) |
| tcsh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/tcsh/alpine?label=) |
| zsh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/debian-bullseye-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/archlinux?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/gentoo?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/centos7?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/mksh/centos8?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/zsh/alpine?label=) |
| posh | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/posh/debian-buster-slim?label=) | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/okadash/posh/debian-bullseye-slim?label=) | | | | |

* All debian image is based on \*-slim.

# AUTHOR

Okadarien Saru <okadas[at]tanban.org>
