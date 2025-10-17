FROM node:22.14
WORKDIR /usr/src/app

# copiar package.json do contexto (./barbearia-api)
COPY package*.json ./
RUN npm install

# copiar prisma e src do contexto

COPY src ./src
COPY .env ./

EXPOSE 3000
CMD ["node", "src/index.js"]