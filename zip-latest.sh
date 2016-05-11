#!/usr/bin/env bash
wget https://github.com/tagmeo/tagmeo/archive/master.zip
unzip master.zip -d working
cd working/tagmeo-master
composer install
zip -ry ../../latest.zip .
cd ../..
mv -f latest.zip public/latest.zip
rm -rf working
rm master.zip