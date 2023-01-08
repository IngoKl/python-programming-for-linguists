#!/bin/sh

mkdir -p ./corpora/hum19uk
mkdir temp

cd temp
#wget https://www.linguisticsathuddersfield.com/s/1800-1849.zip
wget https://teaching.ingokleiber.de/hum19uk/1800-1849.zip
#wget https://www.linguisticsathuddersfield.com/s/1850-1899.zip
wget https://teaching.ingokleiber.de/hum19uk/1850-1899.zip
unzip '*.zip' -d ./hum19uk

cd hum19uk
unzip '*.zip' -d ./../../corpora/hum19uk

cd ../..
rm -r temp