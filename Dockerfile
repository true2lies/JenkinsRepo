# Node.js image as the base
FROM node:18-alpine

# working directory in the container
WORKDIR /app

# Copy application code
COPY . .

# Install dependencies
RUN npm install

# port the app will run on
EXPOSE 8000

# Start the app
CMD ["npm", "start"]
