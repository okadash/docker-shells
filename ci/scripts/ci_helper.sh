throw(){
  echo $*; exit 1;
}

ci_set_img(){
  shell="${i##*/}"
  ci_baseimg="${i%%/*}"
  ci_baseimg="$(echo ${ci_baseimg:?no baseimg} | tr _ -)"
  ci_img_name="${docker_user:-localhost}/${shell}"
}

ci_get_img(){ 
  echo ${ci_img_name:-localhost/null} 
}

ci_get_tag(){
  echo ${ci_baseimg:-null}
}

ci_get_img_full(){
  ci_img_full="$(ci_get_img):$(ci_get_tag)"
  echo ${ci_img_full:?ci_get_img_full: no ci_img_full!}
}

ci_conv2tap(){
  cat ${1:?no target file!} \
    | awk '{
        if ($NR == 1){ print "1..@@@@@@@@@@"; printf("%s %s ",$1,NR); for(i=2;i<NF;i++){ printf("%s",$i);};}
        if ($NF == "ok"){ printf("%s %s ",$1,NR); for(i=2;i<NF;i++){ printf("%s",$i);};}
        else { printf("not ok %s %s",NR,$0); } 
        printf("\n");
      }' \
    | awk "{ gsub(/@@@@@@@@@@/,$(cat $1 | wc -l)); print; }"
}

foreach_dockerfile(){ #function
  cd Dockerfiles
  for i in */*; do
    "${1:?foreach: function name must be specified, abort!}" "$i"
  done
  cd ..
}
