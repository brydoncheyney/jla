#!/usr/bin/env bash

start() {
  cd html && nohup python -m SimpleHTTPServer &>jla-static.log &
  exit 0
}

stop() {
  ps -ef | grep SimpleHTTPServer | awk '{print $2}' | xargs kill
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0
