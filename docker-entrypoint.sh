#!/bin/bash
set -e

# allow to run 
#  - any binary of the container if a full path is specified
#  - bash or sh shell
#
if [[ "$1" == "/"* ]] || [[ "$1" = 'bash' ]] || [[ "$1" = 'sh' ]]; then
  exec "$@"
else
  exec /usr/bin/turnserver "$@"
fi

