            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da Ebac-shop
            Quero configurar meu produto de acordo com meu gosto, tamanho, e quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que acesso um produto

            Cenário: Produtos sem personalização
            Quando não seleciono a cor, tamanho, e quantidade
            E clico em comprar
            Então recebo mensagem de alerta "Campos cor, tamanho e quantidade são obrigatórios!"

            Esquema do Cenário: Produtos com personalização
            Quando seleciono a <cor>, <tamanho> e <quantidade>
            E clico em comprar
            Então recebo mensagem de sucesso "Produto adicionado ao carrinho!"

            Exemplos:
            | cor      | tamanho | quantidade |
            | "Orange" | "XS"    | 2          |
            | "Red"    | "S"     | 1          |
            | "Blue"   | "M"     | 8          |

            Cenário: Quantidade de venda excedida
            Quando seleciono "15" produtos
            E clico em comprar
            Então recebo mensagem de alerta "Limite de produtos excedido, somente 10 por venda."

            Cenário: Quantidade de venda disponível
            Quando seleciono "5" produtos
            E clico em comprar
            Então recebo mensagem de sucesso "Produto adicionado ao carrinho!!!"

            Cenário: Limpeza de personalização
            Dado que possuo produtos personalizados selecionados
            Quando clico em Limpar
            Então recebo mensagem de sucesso "Personalização de produtos excluída com sucesso!!!"

