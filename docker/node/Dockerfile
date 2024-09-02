FROM node:18.17.0-alpine
WORKDIR /usr/src/app
RUN apk add --no-cache \
    bash \
    curl \
    yarn \
    postgresql-client \
    git \
    python3 \
    gdal \
    && npm install -g npm@latest

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
