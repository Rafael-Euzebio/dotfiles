#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#e5dfc5/g' \
         -e 's/rgb(100%,100%,100%)/#0d0d0d/g' \
    -e 's/rgb(50%,0%,0%)/#cb4946/g' \
     -e 's/rgb(0%,50%,0%)/#47915b/g' \
 -e 's/rgb(0%,50.196078%,0%)/#47915b/g' \
     -e 's/rgb(50%,0%,50%)/#f3ead3/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#f3ead3/g' \
     -e 's/rgb(0%,0%,50%)/#0d0d0d/g' \
	$@
