            #language: pt

            Funcionalidade: Autenticação na plataforma Ebac
            Como cliente da Ebac-shop
            Quero realizar autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página de Login

            Esquema do Cenário: Dados válidos
            Quando preencho o campo <e-mail>
            E <senha>
            Então ocorre o redirecionamento para página de checkout

            Esquema do Cenário: Dados inválidos
            Quando preencho o campo email "teste@mailinator.com"
            E campo senha "123ebac@"
            Então é exibido mensagem de alerta "Usuário ou senha inválidos."

            Exemplos

            | e-mail                    | senha        |
            | "andressa@mailinator.com" | "ebac123@"   |
            | "brasil@mailinator.com"   | "brasil145@" |
            | "osvaldo@mailinator.com"  | "osv123@"    |