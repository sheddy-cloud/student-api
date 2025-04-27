# Use Node.js official image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port your app runs on
EXPOSE 3006

# Command to run the app
CMD ["node", "server.js"]
