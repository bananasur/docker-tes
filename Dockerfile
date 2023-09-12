FROM node:18-alpine AS build

WORKDIR /app

COPY package.json package-lock.json jsconfig.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build your Next.js app
RUN npm run build


# Start your app (in production mode)
CMD ["npm", "start"]


