FROM node

WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app/node_modules

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]