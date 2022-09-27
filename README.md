# Billinho

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![GitHub repo size](https://img.shields.io/github/repo-size/lucsduartee/billinho?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/lucsduartee/billinho?style=for-the-badge)

<!---<img src="exemplo-image.png" alt="exemplo imagem">--->

### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:
- [x] Documentação com Swagger
- [x] Dockerizar a aplicação
- [ ] Criar a Engine de exportação do ***Billinho*** (em progresso)
- [ ] Adicionar testes unitários
- [ ] Criar ***Billinho Admin***

## 💻 Pré-requisito

O único pré requisito para utilizar o Billinho é ter o **Docker** e o **Docker Compose** instalado na sua máquina.
Se você não possui essas ferramentas, siga as respectivas ferrametas para a instalação:
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Docker Compose](https://docs.docker.com/compose/install/linux/)

## 🚀 Instalando o Billinho

Depois de clonar o projeto, siga estas etapas:
- Subindo os serviços:
```sh
docker-compose up
```
- Na primeira utilização é necessário fazer o _setup_ do banco localmente. Rode os seguintes comandos,
 cada qual isoladamente, em um outro terminal:
```sh
docker-compose run billinho rails db:create
docker-compose run billinho rails db:migrate
docker-compose run billinho rails db:seed
```
A aplicação estará disponível em `http://localhost:3000/api/v1`

## Rotas
Essas são as rotas da Api. Para ver detalhadamente o que cada requisição espera como parâmetros ou o que cada uma retorna,
acesse a documentação no _Swagger_ utilizando a rota `http://localhost:3000/api-docs`.

| Verbo HTTP | Path               | Usado para                        |
|---         |---                 |---                                |
|    GET     | /institutions      | Listar instituições               |
|    GET     | /institutions/:id  | Listar instituição com o `:id`    |
|   POST     | /institutions      | Criar instituição                 |
|    PUT     | /institutions/:id  | Atualizar instituição com o `:id` |
| DELETE     | /institutions/:id  | Deletar instituição com o `:id`   |
|    GET     | /students          | Listar estudantes                 |
|    GET     | /students/:id      | Listar estudante com o `:id`      |
|   POST     | /students          | Criar estudante                   |
|    PUT     | /students/:id      | Atualizar estudante com o `:id`   |
| DELETE     | /students/:id      | Deletar estudante com o `:id`     |
|    GET     | /enrollments       | Listar matrículas                 |
|    GET     | /enrollments/:id   | Listar matrícula com o `:id`      |
|   POST     | /enrollments       | Criar matrícula                   |
|    GET     | /bills             | Listar faturas                    |
|    GET     | /bills/:id         | Listar fatura com o `:id`         |
