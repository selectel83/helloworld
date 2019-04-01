FROM node:alpine

WORKDIR /app

COPY . /app
RUN npm install

ENV NODE_ENV=production
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["npm", "start"]
