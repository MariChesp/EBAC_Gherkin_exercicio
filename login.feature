            #language: pt
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com"
            E a senha "senha@123"
            Então devo ser direcionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joao123@ebac.com"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao123@ebac.com"
            E a senha "senhafdg"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario         | senha      | mensagem                    |
            | "joaoebac@.com" | "teste123" | "bem vindo ao seu carrinho" |
            | "joaoebac@.com" | "teste123" | "bem vindo ao seu carrinho" |
            | "joaoebac@.com" | "teste123" | "bem vindo ao seu carrinho" |
            | "joaoebac@.com" | "teste123" | "bem vindo ao seu carrinho" |