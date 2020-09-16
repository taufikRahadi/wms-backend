FROM node:lts-alpine

WORKDIR /app
COPY package*.json ./
RUN yarn install --check-files
COPY . .

CMD [ "yarn", "watch" ]