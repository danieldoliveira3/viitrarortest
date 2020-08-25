# Viitra Test

Avaliação técnica em Ruby on Rails para a empresa Viitra

O front-end pode ser encontrado nesse [link](https://github.com/danieldoliveira3/viitra-front-angular)

## Installation

Clone o repositório

```bash
git clone https://github.com/danieldoliveira3/viitrarortest.git
```

Entre na pasta 
```bash
cd viitrarortest
```
Instale as dependências
```bash
bundle install
```
Inicie a aplicação
```bash
rails start
```
## Usage

Use o comando abaixo para ver todas as rotas da aplicação

```bash
rails routes
```

Ou acesse a rota [http://localhost:3000/rails/info/routes](http://localhost:3000/rails/info/routes)

Para criar uma marca utilize a estrutura json do exemplo abaixo
```
{"marca": {"nome":"TOYOTA"}}
````
Sera adicionada automaticamente à estrutura "criado_em" com Time.now e um "carros" com uma lista vazia

Para criar um carro utilize a estrutura
```
{"carro": {"nome": "Chevrolet Camaro", "modelo" : "Camaro", "preco": 1000000.000}}

```

Para criar um usuário utilize a estrutura
```
{"user": {"nome":"joao", "occupation":"estudante"}}

```

## Rotas

/marcas => [GET] retorna todas as marcas cadastradas 

/marcas => [POST] rota de criação de marcas

/marcas/:id => [GET] [UPDATE] [PATH] [DELETE] rota para mostrar, atualizar e deletar uma marca

/marcas/:marca_id/carros => [GET] retorna os carros que pertencem a marca

/marcas/:marca_id/carros => [POST] rota de criação de carros

/carros => [GET] retorna todos os carros criados

/carros/:id => [GET] [UPDATE] [PATH] [DELETE] rota para mostrar, atualizar e deletar um carro

/users => [GET] => retorna todos os usuários criados

/users => [POST] => rota de criação de usuários

/users/:id => [GET] [UPDATE] [PATH] [DELETE] rota para mostrar, atualizar e deletar um usuário



