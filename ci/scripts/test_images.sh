#!/bin/sh
# Load helper for ci_set_img, ci_get_img and ci_get_tag.

. ${0%/*}/ci_helper.sh
counter=0

get_cmdline(){
  echo 'trim_a(){ koe="${1%%a*}"; echo ${koe:?no koe};}; trim_a okada;'
}

posix_cmdline_intrusion(){ #path
  counter=$((counter + 1))
  ci_set_img "${1:?posix_cmdline_intrusion: argument needed}"
  {
    {
      echo "command insertion to the stdin of $(ci_get_img_full) container"
      echo "$(get_cmdline)" | test_stdin 2>&1 
    } | tr \\\n \\\ ; 
    echo;
  } | tee -a tap.tap
  ci_conv2tap tap.tap > result.tap
}

posix_cmdline_arguments(){ #path
  counter=$((counter + 1))
  ci_set_img "$1"
  test_cmdargs "$(get_cmdline)"
}

test_stdin(){ #<stdin
  docker run -i "$(ci_get_img_full)"
}

test_cmdargs(){
  docker run -it "$(ci_get_img_full)" $@
}

foreach_dockerfile posix_cmdline_intrusion "$i"
counter=0
