FROM node:20-bookworm-slim

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=9000

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY . .

EXPOSE 9000

CMD ["npm", "run", "start"]
