# Usar imagen minimalista de Node.js
FROM node:18.15.0-alpine

# Create an unprivileged user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Define working directory
WORKDIR /usr/src/app

# Set environment variables
ENV NODE_ENV=production \
    APP_PORT=8000

# Copy dependency files first to optimize caching
COPY package*.json ./

# Install dependencies securely
RUN npm ci --omit=dev

# Copy source code
COPY . .

# Adjust permissions and switch user

RUN chown -R appuser:appgroup /usr/src/app
USER appuser

# Expose configurable port
EXPOSE ${APP_PORT}

# Start the application
CMD ["node", "index.js"]

# Improved healthcheck with retries and timeout
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=5 \
  CMD wget --quiet --tries=1 --spider http://localhost:${APP_PORT}/api/users || exit 1