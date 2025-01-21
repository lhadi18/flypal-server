# Link to GitHub repository
# https://github.com/lhadi18/flypal-server

# Node.js 20 as base image
FROM node:20

# Working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Build TypeScript files
RUN npm run build

# Expose to port 8080
EXPOSE 8080

# Run command
CMD ["node", "dist/index.js"]
