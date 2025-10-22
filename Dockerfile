# Use official Node.js LTS slim image
FROM node:18-bullseye-slim

# Create app directory
WORKDIR /usr/src/app

# Install dependencies based on lockfile for reproducible builds
COPY package.json package-lock.json* ./
RUN npm ci --omit=dev --no-audit --no-fund

# Copy application source
COPY . .

# The app listens on 8080 according to server.js
EXPOSE 8080

# Use environment variable for production by default
ENV NODE_ENV=production

# Start the server using the README usage (npm start -> node server.js)
CMD ["node", "server.js"]
