#!/bin/bash

MAIN=README.md
WHY=why.md

who=$1
shift
why=$@

sed -i "1s/.*/# $who/" $MAIN
sed -Ei "s/\w+\.png/$who.png/" $MAIN
echo "- $(date) | $why ($who)" >> $WHY

