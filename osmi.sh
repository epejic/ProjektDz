#!/bin/bash
testna=https://www.njuskalo.hr/auti
curl -A "Test/1.1" $1 > auti.tmp
cat auti.tmp | grep "<h3 class=\"entity-title\"><a class=\"link\" href=" | sed 's/.*">\(.*\)<\/a><\/h3>/\1/'
cat auti.tmp | grep "<h3 class=\"entity-title\"><a" | sed 's/.*">\(.*\)<\/a><\/h3>/\1/'
rm auti.tmp
