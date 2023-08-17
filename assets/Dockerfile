FROM node:18.17.1-bookworm-slim AS builder

WORKDIR /build

COPY . .

RUN npm ci
RUN npm run build
RUN npm prune --production

FROM node:18.17.1-bookworm-slim

WORKDIR /app

COPY --from=builder /build/dist ./dist
COPY --from=builder /build/node_modules ./node_modules

USER node

ENV PORT 8080

EXPOSE 8080

CMD ["node", "dist/main.js"]
