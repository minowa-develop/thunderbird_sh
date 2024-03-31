#!/bin/bash

if [ "$1" = "del" ]; then
  rm -f /opt/thunderbird.sh
  rm -f /etc/systemd/system/thunderbird.service
  echo "deleted"
fi

install -o root -g root -m 755 thunderbird.sh /opt/
install -m 755 "$(pwd)/thunderbird.service" /etc/systemd/system/thunderbird.service
systemctl daemon-reload
echo "installed"
