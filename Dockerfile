FROM n8nio/n8n

EXPOSE 10000

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://your-service-name.onrender.com/
