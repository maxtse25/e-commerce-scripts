# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) files
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
