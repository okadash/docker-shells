#!/bin/sh -ex
docker_user=${DOCKER_USERNAME:-localhost}
cd Dockerfiles

build_atomic(){
  ${JUST_SAYING:+echo} docker build -t "${docker_user:+$docker_user/}${shell}:${baseimg:?baseimg corrupted}" -f $1 .
  [ "${baseimg}" = debian-buster-slim ] && docker tag "${docker_user:+$docker_user/}${shell}:${baseimg}" ${docker_user:+$docker_user/}${shell}:latest || return 0
}

push_atomic(){
  [ docker_user != localhost ] && ${JUST_SAYING:+echo} docker push ${docker_user:+$docker_user/}${shell}:${baseimg}
  [ "${baseimg}" = debian-buster-slim ] && ${JUST_SAYING:+echo} docker push ${docker_user:+$docker_user/}${shell}:latest || return 0
}

for i in */*; do
  docker_opts=""
  shell=${i##*/}
  baseimg=${i%%/*}
  baseimg=$(echo ${baseimg:?no baseimg} | tr _ -)
  case "$baseimg" in
  gentoo)
    docker_opts=${GENTOO_MIRRORS:+"--build-arg GENTOO_MIRRORS=${GENTOO_MIRRORS:-https://ftp.iij.ad.jp/pub/linux/gentoo}"}
    [ -z docker_opts ] && break
    build_atomic $i
    ${DOCKER_PUSHING:+ push_atomic};;
  *)
    build_atomic $i
    ${DOCKER_PUSHING:+ push_atomic};;
  esac
done
