#!/bin/sh

sed -i 's|{{ BACKEND_URL }}|'"$BACKEND_URL"'|g' /usr/share/nginx/html/assets/*.js

# laisse la main à docker : CMD
exec "$@"