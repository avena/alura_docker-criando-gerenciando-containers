FROM node:14
# Define the working directory, com isso no copy nao precisa do caminho inteiro (COPY . /app-node)
WORKDIR /app-node
COPY . .
RUN npm install
ENTRYPOINT ["npm", "start"]