#!/bin/bash

yum install -y php71-mysqlnd

mkdir /tmp/layer
cd /tmp/layer

mkdir -p lib/php/7.1/modules
cp /usr/lib64/php/7.1/modules/mysqli.so lib/php/7.1/modules/
cp /usr/lib64/php/7.1/modules/mysqlnd.so lib/php/7.1/modules/
cp /usr/lib64/php/7.1/modules/pdo.so lib/php/7.1/modules/
cp /usr/lib64/php/7.1/modules/pdo_mysql.so lib/php/7.1/modules/

zip -r /opt/layer/php71-mysql.zip .
