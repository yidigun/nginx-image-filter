#!/bin/sh

prefix=${1:-r/c1}
url="http://localhost:8080/$prefix/inna_land.jpg"

n=500
i=0
start=`date +%s`
while [ $i -le $n ]; do
  curl -s $url >/dev/null
  i=`expr $i + 1`
done
end=`date +%s`

elapsed=`expr $end - $start`
echo prefix=$prefix, elapsed=$elapsed
