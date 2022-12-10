#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b1ad7da3-4e4c-409e-a7ce-6629985d1162"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

