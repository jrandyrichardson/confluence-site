#!/bin/bash

cd display/release

T=.tmp
for file in *.md ; do

  grep "^title:" $file && {
    title=$(head -n 10 "$file" | grep "^title:" | cut -d : -f 2 | sed 's|"||g' | sed 's|^ *||')
    echo Processing $file with title $title

    url=$(echo $title | tr ' ' '+' | sed 's|,|%2C|g' | sed "s|'|%27|g")
    if echo $title | grep '\.' ; then
      # jekyll issue, can't have dots or it will think it already has an extension
      url="${url}/" # treat as diretory with index.htl
    fi
    cat > $T <<EOF
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/${url}
summary:
EOF
    #awk '/^title:/{p++;if(p==1){next}}p' $file >> $T
    #cat $T ; exit
    #mv -v $T $file

    sed -i "/^title:/ r $T" $file
  }

done