FROM n8nio/n8n:latest

# Railway injects PORT env var - map it to N8N_PORT
ENV N8N_PORT=${PORT:-5678}
ENV N8N_PROTOCOL=https
ENV N8N_LISTEN_ADDRESS=0.0.0.0
