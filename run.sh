#!/usr/bin/env bash

set -euf -o pipefail

cd html && nohup python -m SimpleHTTPServer &>jla-static.log &

exit 0
