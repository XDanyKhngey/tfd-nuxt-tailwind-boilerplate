FROM node:16

WORKDIR /app

# Copy package files and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the application files
COPY . .

# Build the Nuxt.js application
RUN yarn build

# Expose the Nuxt.js default port
EXPOSE 3000

# Start the Nuxt.js application in production mode
CMD ["yarn", "start"]
