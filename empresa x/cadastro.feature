                  #language: pt

                  Funcionalidade: Tela de cadastro
                  Como aluno da  empresa x
                  Quero me cadastrar
                  Para poder acessar a plataforma

                  Contexto:
                  Dado que eu acesse a página de cadastro empresa x

                  Cenário: Autenticação Válida
                  Quando eu digitar nome "João Santos da Silva"
                  E o email "joãosantos@gmail.com"
                  E a senha "123456La"
                  E clicar no botão "inscrever-se"
                  Entao deve aparacer uma mensagem de confirmação de email

                  Cenário: Campo nome vazio
                  Quando eu digitar o email "joãosantos@gmail.com"
                  E a senha "123456La"
                  Entao deve aparacer uma mensagem "Campo obrigatório"

                  Esquema do Cenário: Invalidação de usuários
                  Quando eu digitar o <nome>
                  E o <email>
                  E a <senha>
                  E clicar no botão "Inscrever-se"
                  Entao deve exibir <mensagem>

                  Exemplos:

                  | nome                   | email                  | senha      | mensagem               |
                  | "João Santos da Silva" | ""                     | "123456La" | "Campo obrigatório"    |
                  | "João Santos da Silva" | "joãosantosgmail.com"  | "123456La" | "E-mail inválido"      |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | "123456La" | "E-mail já cadastrado" |


                  Esquema do Cenário: Ivalidações de senhas
                  Quando eu digitar o <nome>
                  E o <email>
                  E a senha <senha>
                  Entao deve exibir <mesagem>

                  Exemplos:

                  | nome                   | email                  | senha         | mensagem                                  |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | "123456la"    | "A senha precisa ter uma letra maiúscula" |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | "123456LA"    | "A senha precisa ter uma letra minúscula" |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | "Lalalalalal" | "A senha precisa ter um número"           |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | "12345La"     | "A senha precisa ter 8 caracteres"        |
                  | "João Santos da Silva" | "joãosantos@gmail.com" | ""            | "Campo obrigatório"                       |