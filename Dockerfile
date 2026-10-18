# Use Node.js 18 with Alpine Linux
FROM node:18-alpine

# Set /app as the working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Document that the application uses port 5000
EXPOSE 5000

# Start the application
CMD ["npm", "start"]