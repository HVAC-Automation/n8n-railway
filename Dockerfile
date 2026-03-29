FROM n8nio/n8n:stable

ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0

EXPOSE 5678

COPY entrypoint.sh /entrypoint.sh

# Run entrypoint as root so we can fix volume permissions
USER root
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
