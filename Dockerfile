# Base image
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json & lock file
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Copy source code (bao gồm cả dist/)
COPY . .

# Expose port
EXPOSE 3000

# Run the compiled app
CMD ["node", "dist/main"]