FROM node:14
WORKDIR /user/src/app
COPY package*.json ./

RUN npm install
copy . .
RUN npm run build-production

CMD [ "forever", "server.js"]
