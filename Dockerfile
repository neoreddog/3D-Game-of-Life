FROM nginx
COPY . /app
WORKDIR /app

RUN npm install
RUN npm run build-production

RUN forever
