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


# Usage

```
$ echo cat /etc/os-release | docker run -i okadash/bash:debian-bullseye-slim
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
$ cat some_awesome_posix_shell_script.sh | okadash/dash
```

See also [Github repo](https://github.com/okadash/docker-shells).
