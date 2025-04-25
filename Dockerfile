# 1. Base image
FROM node:18

# 2. Create app directory inside the container
WORKDIR /app

# 3. Copy dependency definitions and install
COPY package*.json ./
RUN npm install

# 4. Copy application code
COPY . .

# 5. Expose the port your app runs on
EXPOSE 3000

# 6. Define the command to run your app
CMD ["npm", "start"]
