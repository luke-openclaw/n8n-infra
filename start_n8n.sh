#!/bin/bash
export N8N_HOST=100.93.95.56
export N8N_PORT=5678
export N8N_PROTOCOL=http
export NODE_ENV=production
export WEBHOOK_URL=http://100.93.95.56/n8n/
export N8N_PATH=/n8n/
export N8N_TRUST_PROXY=true
export N8N_PROXY_HOPS=1
export N8N_USER_FOLDER=/media/gopi/2Tb/apps/n8n/data
npx n8n start
