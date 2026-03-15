# n8n on Railway

Self-hosted [n8n](https://n8n.io) workflow automation deployed on Railway.

## Setup

Environment variables required:
- `N8N_BASIC_AUTH_ACTIVE=true`
- `N8N_BASIC_AUTH_USER=chris`
- `N8N_BASIC_AUTH_PASSWORD=<password>`
- `GENERIC_TIMEZONE=America/New_York`
- `TZ=America/New_York`
- `N8N_ENCRYPTION_KEY=<random-32-char-string>`

## Data Persistence

Attach a Railway volume mounted at `/home/node/.n8n` to persist workflows.
