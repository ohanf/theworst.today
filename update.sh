#!/bin/bash
set -e

git pull

MAIN=README.md
WHY=why.md

who=$1
shift
why=$@

sed -i "1s/.*/# $who/" $MAIN
sed -Ei "s/\w+\.png/$who.png/" $MAIN
sed -i "1i- $(date) - $why ($who)" $WHY

git add .
git commit -m "update: $who: $why"
git push
set +e

