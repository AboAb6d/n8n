FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Expose port
EXPOSE 5678

# Environment variables for n8n
ENV NODE_ENV=production
ENV WEBHOOK_URL=http://localhost:5678
ENV GENERIC_FUNCTION_TIMEOUT=600

# Start n8n
CMD ["n8n", "start"]
