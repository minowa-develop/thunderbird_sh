#!/bin/bash

THUNDERBIRD_PATH="/home/minowa/tools/thunderbird/thunderbird"

function start_app {
  "${THUNDERBIRD_PATH}" > /dev/null 2>&1 &
  exit $?
}

function stop_app {
  kill $(pgrep thunderbird) > /dev/null 2>&1 || echo "not running." 
  exit $?
}

case "${1}" in
  "start")
    start_app
    ;;
  "stop")
    stop_app
    ;;
  "restart")
    stop_app
    sleep 5
    start_app
    ;;
  *)
    echo "not option: ${1}. please input [start or stop]"
    exit 1
esac
