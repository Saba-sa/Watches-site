# Use a base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Command to run the application
CMD ["node", "app.js"]  # Change 'app.js' to your entry point file