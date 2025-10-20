FROM node:22.14
WORKDIR /usr/src/app

# copiar package.json do contexto (./barbearia-api)
COPY package*.json ./
RUN npm install 


COPY src ./src

EXPOSE 3000