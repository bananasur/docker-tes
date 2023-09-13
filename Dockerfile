FROM node:18-alpine AS build

WORKDIR /app

COPY package.json jsconfig.json ./

# Install dependencies
RUN yarn install

# Copy the rest of your application code
COPY . .

# Build your Next.js app
RUN yarn build


# Start your app (in production mode)
CMD ["yarn", "start"]


