# STEP 1: Base Image
# Use a lightweight Node.js base image (node:18-alpine is a great choice)
FROM node:18-alpine

# STEP 2: Working Directory
# Set the directory inside the container for our application files
WORKDIR /usr/src/app

# STEP 3: Dependencies
# Copy package files first. This allows Docker to cache the 'npm install' layer
# If you only change the server.js file, the installation won't be re-run.
COPY package*.json ./

# STEP 4: Install Dependencies
# Install the packages listed in package.json
RUN npm install

# STEP 5: Add Code
# Copy the rest of the source code (server.js) into the container
COPY . .

# STEP 6: Port Exposure
# Document the port the application listens on (doesn't publish it to the host)
EXPOSE 3000

# STEP 7: Startup Command
# Define the command to run the application when the container starts
CMD [ "node", "server.js" ]
