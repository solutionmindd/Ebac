            #language: pt

            Funcionalidade: Autenticação na plataforma Ebac
            Como cliente da Ebac-shop
            Quero realizar autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página de Login

            Cenário: Autenticação com dados válidos
            Quando preencho o campo e-mail com "<e-mail>"
            E preencho o campo senha com "<senha>"
            E clico no botão de login
            Então ocorre o redirecionamento para a página de checkout

            Exemplos:
            | e-mail                  | senha      |
            | andressa@mailinator.com | ebac123@   |
            | brasil@mailinator.com   | brasil145@ |
            | osvaldo@mailinator.com  | osv123@    |

            Cenário: Autenticação com dados inválidos
            Quando preencho o campo e-mail com "teste@mailinator.com"
            E preencho o campo senha com "123ebac@"
            E clico no botão de login
            Então é exibida uma mensagem de alerta "Usuário ou senha inválidos!!!"
