# ci-cd-teste-exemplo
Exemplos de aplicações de Integração Contínua e Desenvolvimento Contínua usando jenkins, GitHub Actions e Docker.

## Requisito
Docker desktop instalado

## Adendo
Diferente dos outros repositórios, este não é necessário porque estamos utilizando CI/CD para fazer automatizar a realização de testes após um push de commit.

### Branches
Não esqueça de observar as Branches para encontrar as especificações de cada tipo de integração:

- **main**: Contém o Jenkinsfile. Como fiz no Windows, olhar o arquivo Jenkinsfile-win.
- **docker:** Contém a pasta "logs-cypress" onde armazenou um volume gerada por Docker.
  - comando utilizado: ```PowerShell
  docker run --rm `
-v ${pwd}/logs-cypress/videos:/e2e/cypress/videos `
-v ${pwd}/logs-cypress/screenshots:/e2e/cypress/screenshots `
ci-cd-cypress-container```
- **gh-pages**: repositório para armazenar os resultados do GitHub Actions. Olhar arquivo `.github/workflows/teste-ci.yml`
