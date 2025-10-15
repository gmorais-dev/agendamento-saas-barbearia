FROM node:22.14
WORKDIR /usr/src/app

# usa package.json que está na raiz do repositório
COPY package*.json ./
RUN npm install

# copia o prisma e o src que estão dentro de barbearia-api/
COPY barbearia-api/prisma ./prisma
COPY barbearia-api/src ./src
COPY .env ./

EXPOSE 3000
# executa o entrypoint diretamente (package.json atual não tem "dev")
CMD ["node", "src/index.js"]