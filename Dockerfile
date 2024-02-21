FROM node:20.11-alpine

WORKDIR /store_back

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000
# required for docker desktop port mapping

CMD ["npm", "start"]