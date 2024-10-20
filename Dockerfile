# Use the official Node.js image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy the index.html file
COPY index.html .

# Install http-server
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Command to run the HTTP server
CMD ["http-server", "-p", "8080"]

