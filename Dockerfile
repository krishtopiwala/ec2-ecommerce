FROM node:20-alpine

WORKDIR /node-app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5500

CMD [ "npm", "run", "dev" ]