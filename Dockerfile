# Node.js image as the base
FROM node:18-alpine

# working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# port the app will run on
EXPOSE 8000

# Start the app
CMD ["npm", "start"]
