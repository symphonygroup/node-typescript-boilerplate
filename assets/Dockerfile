FROM building5/dumb-init:1.2.1 as init
FROM node:18.18.0-bookworm-slim AS builder

WORKDIR /build

COPY . .

RUN npm ci
RUN npm run build
RUN npm prune --production

FROM node:18.18.0-bookworm-slim

WORKDIR /app

USER node

COPY --from=builder /build/dist ./dist
COPY --from=builder /build/node_modules ./node_modules
COPY --from=init /dumb-init /usr/local/bin

CMD ["dumb-init", "node", "dist/main.js"]
