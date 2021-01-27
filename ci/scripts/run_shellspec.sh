#!/bin/sh
SHELLSPEC_VERSION="0.28.1"
SHELLSPEC_DIR="shellspec"
TESTLOG_DIR="ci/test/log"
DOCKERFILE_DIR="Dockerfiles"

shells_test_prepare(){
  throw(){ echo $*; exit 1; }
  git version > /dev/null || throw no git;
  docker version > /dev/null || throw no docker

  : ${TESTLOG_DIR:?TESTLOG_DIR must be set to execute this script!}
  : ${DOCKERFILE_DIR:?DOCKERFILE_DIR must be set to execute this script!}
  : ${SHELLSPEC_DIR:?SHELLSPEC_DIR must be set to execute this script!}
  [ -f $TESTLOG_DIR/shellspec.log ] && mv -v shellspec.log .old.shellspec.log
  [ -f $TESTLOG_DIR/test_result.log ] && mv -v test_result.log .old.test_result.log
  [ ! -d $TESTLOG_DIR ] && mkdir -v $TESTLOG_DIR 
  {
    touch $TESTLOG_DIR/init
    rm $TESTLOG_DIR/init
  } || throw cannot access $TESTLOG_DIR/\*
  for t in $TESTLOG_DIR/*.tap; do mv -v $t ${t%/*}/.old.${t##*/}; done

  [ -d "$SHELLSPEC_DIR" ] && {
    cd "$SHELLSPEC_DIR"
    git status && cd .. || { 
      cd ..;
      rm -rfv "$SHELLSPEC_DIR"; 
      git clone -b "$SHELLSPEC_VERSION" https://github.com/shellspec/shellspec "$SHELLSPEC_DIR"
      rm -v "$SHELLSPEC_DIR"/spec/install_spec.sh
    }
  }
}

shells_test(){

  ## Return an docker image name from a path
  shells_set_img_name(){ #path
    img=${1#*/}
    img=okadash/${img#*/}:${img%/*}
    echo $img
  }

  ## Name converter for the TAP log file
  shells_tap_filename(){ #path
    echo $TESTLOG_DIR/$(echo ${1:?shells_tap_filename: no argument} | tr "/:" "_-").tap
  }

  ## Notification functions 
  shells_test_skip(){ #<img_name>
    echo "\033[01;34m [SKIPPING]\033[00m: \033[01;36m $1 \033[00m"
  }
  shells_test_notificate(){ #<img_name>
    echo "\033[01;33m Testing\033[00m\033[01;34m $1 \033[00m"
  }
  shells_test_ok(){ #<img_name>
    echo "\033[01;32m [PASSED]\033[00m: \033[01;34m $1 \033[00m"
  }
  shells_test_nok(){ #<img_name>
    echo "\033[01;31m [FAILURE]\033[00m: \033[01;34m $1 \033[00m"
  }

  ## Unit testing
  shells_make_unit_test(){ #<img_name> #<output_file>
    echo "cd /test; ./shellspec --no-banner --jobs 4 --format tap;" \
      | docker run -i -v $PWD/shellspec:/test $1 \
      | tee -a $2 \
      || return 1
  }

  ## Get target for the test
  shells_get_target(){ #[desc]
    case "$1" in
    all|"") echo $DOCKERFILE_DIR/*/*;;
    *) echo $(echo $DOCKERFILE_DIR/*/* | tr \\\  \\\n | grep ${1:?ERR});;
    esac
  }

  ## Main
  shells_test_main(){
    for i in $(shells_get_target "$1") ; do
      img=$(shells_set_img_name $i)
      [ -h ${i%/*} ] \
        && shells_test_skip $img \
        || {
          shells_test_notificate $img
          if shells_make_unit_test $img $(shells_tap_filename $img); then
            shells_test_ok $img
          else
            shells_test_nok $img
          fi
          echo ; echo -------------------------------------------; echo;
        }
    done | tee -a $TESTLOG_DIR/shellspec.log
  
    echo END
  }

  shells_test_main "$1"
  echo
}
shells_test_teardown(){
  [ ! -z "$1" ] && cat $TESTLOG_DIR/shellspec.log | grep -E "PASSED|FAILURE|SKIPPING" | tee -a $TESTLOG_DIR/test_result.log
}

shells_test_prepare
shells_test "$1"
shells_test_teardown #1 comment in this if you need to output test summary at last

