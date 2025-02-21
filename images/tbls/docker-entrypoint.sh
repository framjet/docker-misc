#!/busybox/sh

set -e

if [ "$1" = 'init' ]; then
  echo "Ready!"
else
  tbls "$@"
fi
