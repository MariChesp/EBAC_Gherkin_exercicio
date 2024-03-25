#language: pt
Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse a pagina de cadastro da EBAC SHOP

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Quando eu preencher todos os campos obrigatórios
E eu finalizar meu cadastro
Então poderei finalizar minha compra

Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu insirir "joaninha123" no campo de email
Então deve aparecer mensagem de erro "Email invalido"

Esquema do Cenário: Email com formato inválido
Quando eu digitar <email>
Então deve exibir <mensagem> de erro

| email         | mensagem         |
| "Joaninha123" | "Email invalido" |
| "Joaozin"     | "Email invalido" |
| "Jojo123"     | "Email invalido" |

Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Quando eu não preencher algum dos campos
Então deve exibir mensagem de alerta "Campo vazio"

