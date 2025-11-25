# Use official Node LTS
FROM node:18-alpine AS base
WORKDIR /usr/src/app
ENV NODE_ENV=production

# Install dependencies
COPY package*.json ./
COPY prisma ./prisma/
RUN npm ci --production

# Copy source
COPY . .

# Generate Prisma client and build Next.js
RUN npm run prisma:generate
RUN npm run build

# Run
EXPOSE 3000
CMD ["npm", "start"]
