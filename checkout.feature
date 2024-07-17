            #language: pt

            Funcionalidade: Cadastro de informações pessoais no checkout
            Como cliente da Ebac-shop
            Quero concluir o cadastro pessoal com dados obrigatórios
            Para finalizar minha compra

            Contexto:
            Dado que acesso a página de detalhes de faturamento

            Cenário: Campos obrigatórios preenchidos
            Quando preencho os campos obrigatórios nome, sobrenome, país, endereço, cidade, cep, telefone, e-mail
            E clico em finalizar compra
            Então recebo mensagem de sucesso "Pedido realizado com sucesso!"

            Exemplos:
            | nome       | sobrenome   | país       | endereço             | cidade      | cep         | telefone    | e-mail                    |
            | "Andressa" | "Rodrigues" | "Portugal" | "rua: teste123"      | "Lisboa"    | "03800-000" | "4002-8922" | "andressa@mailinator.com" |
            | "Bruno"    | "Neves"     | "Brasil"   | "av: teste123"       | "Campinas"  | "03900-000" | "4001-8922" | "brasil@mailinator.com"   |
            | "Caio"     | "Tagomori"  | "Japão"    | "travessa: teste123" | "Liberdade" | "04000-000" | "4003-8922" | "osvaldo@mailinator.com"  |

            Cenário: Campos obrigatórios vazios
            Quando não preencho os campos obrigatórios nome, sobrenome, país, endereço, cidade, cep, telefone, e-mail
            E clico em finalizar compra
            Então recebo mensagem de alerta "Preencha campos obrigatórios para finalizar pedido!!!"

            Cenário: Validação campo e-mail
            Quando preencho o campo e-mail com "###$$$$$$EDDDDDDD"
            E clico em finalizar compra
            Então recebo mensagem de alerta "Campo e-mail incorreto, preencha com @ e .com"
