#!/bin/sh

mkdir -p corpora/coca

wget https://www.corpusdata.org/coca/samples/coca-samples-text.zip
unzip coca-samples-text.zip -d ./corpora/coca