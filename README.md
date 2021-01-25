docker-shells

# WHAT

docker-shells is a collection of shells inside docker containers. You can use shells with various versions and variouse os images.

# Supported platform (at now)

* amd64
* docker (tested on >=19.0)
* Linux (kernel >=4.19)

## shells

| name | license | tested condition |
| --- | --- | --- |
| bash | GPLv3 |
| dash | 3-clause BSD |
| busybox sh | GPLv2 |
| ksh | EPL-1.0 | ksh-93 for debian:buster, ksh-2020 for others |
| mksh | MirOS licence + 3-clause BSD | 
| zsh | Mit-like license | |
| yash | GPLv2 | only for debian |

## base image support

All debian image based on \*-slim.

| name | buster | bullseye | archlinux | gentoo |
| --- | --- | --- | --- | --- |
| bash | x | x | x | x |
| dash | x | x | x | x |
| busybox sh | x | x | x | x |
| ksh-99 | x | | x | |
| ksh-2020 | | x | x | |
| mksh | x | x | x | x |
| tcsh | x | x | x | x |
| zsh | x | x | x | x |
| posh | x | x | | | 
| yash | x | x | | | 
