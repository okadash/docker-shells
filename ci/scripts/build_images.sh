#!/bin/sh -e

# Load helper for ci_set_img, ci_get_img, ci_get_img_full and ci_get_tag

. ${0%/*}/ci_helper.sh

build_atomic(){ #<img_name>
  ${JUST_SAYING:+echo} docker build -t "$(ci_get_img_full)" -f $1 .
  [ "$(ci_get_tag)" = buster-slim ] \
    && ${JUST_SAYING:+echo} docker tag "$(ci_get_img_full)" "$(ci_get_img):latest" \
    || return 0
}

push_atomic(){ #<img_name>
  ${JUST_SAYING:+echo} docker push "$(ci_get_img_full)"
  [ "$(ci_get_tag)" = buster-slim ] && ${JUST_SAYING:+echo} docker push $(ci_get_img):latest || return 0
}

main(){

docker_user=${DOCKER_USERNAME:-localhost}
docker_opts=""

ci_build_gentoo(){
  docker_opts=${GENTOO_MIRRORS:+"--build-arg GENTOO_MIRRORS=${GENTOO_MIRRORS:-https://ftp.iij.ad.jp/pub/linux/gentoo}"}
  [ -z "$docker_opts" ] && return 0;
  build_atomic $i
  ${DOCKER_PUSHING:+ push_atomic};
}

ci_build(){
  ci_set_img "${1:?ci_build: no dockerfile specified!}"
  [ -z "$(ci_get_tag)" ] && throw ci_build: no tag set;
  [ "$(ci_get_tag)" = "gentoo" ] && { ci_build_gentoo; exit 0; }
  build_atomic $1
  ${DOCKER_PUSHING:+ push_atomic};
}

foreach_dockerfile ci_build

}

main
