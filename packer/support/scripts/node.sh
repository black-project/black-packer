#!/bin/sh

wget http://nodejs.org/dist/v0.10.28/node-v0.10.28.tar.gz
tar xfz node-v0.10.28.tar.gz

cd node-v0.10.28 && ./configure && sudo make

make install
npm install -g less
