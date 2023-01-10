#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2797c41b-6e3e-4a2a-8654-74be657de22e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

