#!/bin/bash

ln -sf "$(pwd)/thunderbird.service" /etc/systemd/system/thunderbird.service
systemctl daemon-reload
