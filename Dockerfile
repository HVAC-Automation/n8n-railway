FROM n8nio/n8n:latest

# Railway injects PORT at runtime — map it to N8N_PORT via entrypoint wrapper
USER root
RUN printf '#!/bin/sh\nexport N8N_PORT="${PORT:-5678}"\nexport N8N_LISTEN_ADDRESS="0.0.0.0"\nexec /docker-entrypoint.sh "$@"\n' > /start.sh && chmod +x /start.sh
USER node

ENTRYPOINT ["/start.sh"]
CMD ["n8n"]
