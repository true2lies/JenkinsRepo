# Node.js image as the base
FROM node:18-alpine

# working directory in the container
WORKDIR /app

# Install dependencies
RUN sudo npm install

# Copy application code
COPY . .

# port the app will run on
EXPOSE 8000

# Start the app
CMD ["npm", "start"]
