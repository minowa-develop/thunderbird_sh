#!/bin/bash

THUNDERBIRD_PATH="/home/minowa/ダウンロード/thunderbird-115.8.1/thunderbird/thunderbird"

case "${1}" in
  "start")
    "${THUNDERBIRD_PATH}" > /dev/null 2>&1 &
    ;;
  "stop")
    kill $(pgrep thunderbird) &
    ;;
  *)
    echo "not option: ${1}. please input [start or stop]"
    exit 1
esac
