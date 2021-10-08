#!/bin/bash

cd display/release

T=.tmp
for file in *.md ; do

  grep "^Created by" $file && {
    title=$(head -n 1 $file | cut -d : -f 2)
    echo Processing $file with title $title

    cat > $T <<EOF
---
title: ${title}
---
EOF
    awk '/^Created by/{p++;if(p==1){next}}p' $file >> $T
    mv -v $T $file
  }

done