#!/bin/bash -eux

rm -f /root/.bash_history
rm -f /home/vagrant/.bash_history

unset HISTFILE

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
