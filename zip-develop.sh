#!/usr/bin/env bash
wget https://github.com/tagmeo/tagmeo/archive/develop.zip
unzip develop.zip -d working
cd working/tagmeo-develop
composer install
zip -ry ../../latest-develop.zip .
cd ../..
mv -f latest-develop.zip public/latest-develop.zip
rm -rf working
rm develop.zip