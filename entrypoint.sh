#!/bin/sh
# Fix permissions on the n8n data directory (volume may mount as root)
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n

# Drop to node user and start n8n
exec su node -s /bin/sh -c "n8n"
