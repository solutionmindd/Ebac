            #language: pt

            Funcionalidade: Cadastro de informações pessoais no checkout
            Como cliente da Ebac-shop
            Quero concluir o cadastro pessoal com dados obrigatórios
            Para finalizar minha compra

            Contexto:
            Dado acesso a página de detalhes de faturamento

            Esquema do Cenário: Campos obrigatórios preenchidos
            Quando preencho os campos obrigatórios <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            E clico em finalizar compra
            Então recebo mensagem de sucesso "Pedido realizado com sucesso!"

            Esquema do Cenário: Campos obrigatórios vazio
            Quando não preencho campos obrigatórios nome, sobrenome, pais, endereco, cidade, cep, telefone, email
            E clico em finalizar compra
            Então recebo mensagem de alerta "Preencha campos obrigatórios para finalizar pedido"

            Esquema do Cenário: Validação campo e-mail
            Quando preencho o campo e-mail "###$$$$$$EDDDDDDD"
            E clico em finalizar compra
            Então recebo mensagem de alerta "Campo e-mail incorreto, preencha com @ e .com"


            | e-mail                    | nome       | sobrenome   | pais       | endereco             | cidade      | cep         | telefone    |
            | "andressa@mailinator.com" | "Andressa" | "Rodrigues" | "Portugal" | "rua: teste123"      | "Lisboa"    | "03800-000" | "4002-8922" |
            | "brasil@mailinator.com"   | "Bruno"    | "Neves"     | "Brasil"   | "av: teste123"       | "Campinas"  | "03900-000" | "4001-8922" |
            | "osvaldo@mailinator.com"  | "Caio"     | "Tagomori"  | "Japão"    | "travessa: teste123" | "Liberdade" | "04000-000" | "4003-8922" |