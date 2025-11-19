# Stage 1: Build
FROM node:22-alpine AS builder

WORKDIR /app

COPY app/package.json app/ackage-lock.json* ./
RUN npm install

COPY app/tsconfig.json ./
COPY app/src ./src
RUN npm run build

# Stage 2: Production runtime
FROM node:22-alpine

WORKDIR /app

COPY --from=builder /app/package.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist

ENV PORT=3000
EXPOSE 3000

CMD ["node", "dist/service.js"]

