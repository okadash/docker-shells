#!/bin/sh
SHELLSPEC_VERSION="0.28.1"

git version > /dev/null || { echo no git; exit 1;}
docker version > /dev/null || { echo no docker; exit 1;}

[ -d shellspec ] && rm -rfv shellspec
git clone -b 0.28.1 https://github.com/shellspec/shellspec shellspec
for i in Dockerfiles/*/*  ; do
  img=${i#*/}
  img=okadash/${img#*/}:${img%/*}
  [ -h ${i%/*} ] \
    && echo "\033[01;34m Skipping\033[00m\033[01;36m $img \033[00m" \
    || {
      echo "\033[01;33m Testing\033[00m\033[01;34m $img \033[00m"
      echo "cd /test; ./shellspec --no-banner --jobs 4;" | docker run -i -v $PWD/shellspec:/test $img 
    }
done 

rm -rf shellspec
