#language: pt
Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção de cor, tamanho e quantidade obrigatórios
Dado que eu selecione um produto
Quando for adicionar ao carrinho
E eu não tenha definido <cor>, <tamanho> e/ou <quantidade>
Então deve exibir uma mensagem de erro 'seleção de campo <cor>, <tamanho> e <quantidade> obrigatórios' 

Cenário: Deve permitir apenas 10 produtos por venda
Dado que eu selecione um produto
Quando eu escolher uma quantidade menor ou igual a 10
Então deve exibir uma mensagem de sucesso "Produto adicionado ao carrinho"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Dado que eu tenha adicionado produtos ao carrinho
Quando eu selecionar o botão <limpar> 
Então deve voltar ao estado original

