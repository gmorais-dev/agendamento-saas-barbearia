# Etapa base
FROM node:22.14

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos do projeto
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código
COPY . .

# Gera o cliente Prisma
RUN npx prisma generate

# Expõe a porta da aplicação
EXPOSE 3000

# Comando padrão (sobrescrito pelo docker-compose)
CMD ["npm", "run", "dev"]
