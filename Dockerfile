# Use uma imagem oficial do Node.js como base
FROM node:14

# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho do container
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diretório de trabalho do container
COPY . .

# Exponha a porta que a aplicação usará
EXPOSE 8080

# Defina o comando para rodar a aplicação
CMD [ "node", "index.js" ]