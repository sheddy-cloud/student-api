# Step 1: Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json (to install dependencies)
COPY package*.json ./

# Step 4: Install any needed dependencies (based on package.json)
RUN npm install

# Step 5: Copy the rest of your application code
COPY . .

# Step 6: Expose the port your app will run on (this should match the one in your .env file)
EXPOSE 3006

# Step 7: Command to run your app (make sure this matches how your app starts)
CMD ["node", "server.js"]

