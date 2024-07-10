            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da Ebac-shop
            Quero configurar meu produto de acordo com meu gosto,tamanho, e quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que acesso um produto

            Esquema do Cenário: Produtos sem personalização
            Quando não seleciono a cor, tamanho, e quantidade
            E clico em comprar
            Então recebo mensagem de alerta "Campos cor, tamanho e quantidade são obrigatórios!"

            Esquema do Cenário: Produtos com personalização
            Quando seleciono a <cor>, <tamanho>, e <quantidade>
            E clico em comprar
            Então recebo mensagem de sucesso "Produtos adicionado ao carrinho!"

            Esquema do Cenário: Quantidade de venda excedido
            Quando seleciono "15" produtos
            E clico em comprar
            Então recebo mensagem de alerta "Limite de produtos excedido, somente 10 por venda."

            Esquema do Cenário: Quantidade de venda disponível
            Quando seleciono "5" produtos
            E clico em comprar
            Então recebo mensagem de sucesso "Produtos adicionado ao carrinho!"

            Esquema do Cenário: Limpeza de personalização
            Quando possuo produtos personalizados selecionados
            E clico em Limpar
            Então recebo mensagem de sucesso "Personalização de produtos excluída com sucesso!"

            Exemplos:
            | cor      | tamanho | quantidade |
            | "Orange" | "XS"    | "2"        |
            | "Red"    | "S"     | "1"        |
            | "Blue"   | "M"     | "8"        |
