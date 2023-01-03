FROM node:19-alpine3.16

# Create a working directory
WORKDIR /app

# Copy the package.json file
COPY package.json .

# Install the dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Build the app
RUN npm run build

# Expose the port
EXPOSE 3000

# Set the command to start the server
CMD ["npm", "start"]
