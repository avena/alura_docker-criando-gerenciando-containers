FROM node:14
# Define the working directory, com isso no copy nao precisa do caminho inteiro (COPY . /app-node)
WORKDIR /app-node

# ARG só funciona em tempo de criação, de build da nossa imagem.
ARG PORT_BUILD=6000

# Se quisermos passar isso efetivamente para dentro do container que vai ser gerado, ou seja, se quisermos que em algum momento essa variável possa ser lida dentro do container, precisamos explicitar também um outro tipo de variável de ambiente que vai ser para dentro do container, que é um ENV.
ENV PORT=$PORT_BUILD
EXPOSE $PORT_BUILD

COPY . .
RUN npm install
ENTRYPOINT ["npm", "start"]
# Porta que a aplicação vai rodar, documentando que vai rodar na porta 3000 - não seria obrigatório, pois na aplicação e no parametro de execução
