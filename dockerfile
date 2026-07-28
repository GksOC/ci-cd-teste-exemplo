FROM cypress/included:latest

WORKDIR /e2e  

# Copia os arquivos essenciais do projeto
COPY package.json .
COPY package-lock.json .
COPY cypress.config.js .
COPY cypress ./cypress

# Instala dependências do projeto (como o Allure CLI se estiver no package.json)
RUN npm install  

# Executa o fluxo completo configurado para Linux/Bash
CMD ["npm", "run", "fluxo-completo-bash"]