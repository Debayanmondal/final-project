# Use the official Node.js image
FROM node:14

# Create and set the working directory
WORKDIR /medcare && /medcare-server

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]

