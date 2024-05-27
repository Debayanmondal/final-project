# Use the official Node.js image as the base
FROM node:18-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

