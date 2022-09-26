# Billinho

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![GitHub repo size](https://img.shields.io/github/repo-size/lucsduartee/billinho?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/lucsduartee/billinho?style=for-the-badge)

<!---<img src="exemplo-image.png" alt="exemplo imagem">--->

### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:
- [x] Documentação com Swagger
- [ ] Adicionar testes unitários
- [ ] Criar ***Billinho Admin***
- [ ] Criar a Engine de exportação do ***Billinho***

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

## 🚀 Instalando o Billinho

Para instalar o Billinho, siga estas etapas:

Linux e macOS:
```
```

Windows:
```
```

## ☕ Usando o Billinho

Para usar o Billinho, siga estas etapas:

```
```
## Rotas `/api/v1`
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
