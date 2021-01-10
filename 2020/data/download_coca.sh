#!/bin/sh

mkdir -p corpora/coca
mkdir temp

cd temp
wget https://www.corpusdata.org/coca/samples/coca-samples-text.zip
unzip coca-samples-text.zip -d ./../corpora/coca

cd ..
rm -r temp