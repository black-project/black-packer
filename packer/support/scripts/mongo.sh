#!/bin/bash -eux

apt-get install -y mongodb-org
service mongod start
