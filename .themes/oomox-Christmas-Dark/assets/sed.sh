#!/bin/sh
sed -i \
         -e 's/#2b3339/rgb(0%,0%,0%)/g' \
         -e 's/#d3c6aa/rgb(100%,100%,100%)/g' \
    -e 's/#1e2327/rgb(50%,0%,0%)/g' \
     -e 's/#a7c080/rgb(0%,50%,0%)/g' \
     -e 's/#434f55/rgb(50%,0%,50%)/g' \
     -e 's/#d3c6aa/rgb(0%,0%,50%)/g' \
	$@
