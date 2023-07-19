#language: pt

Funcionalidade: Tela de cadastro
Como aluno da da empresa x
Quero me cadastrar
Para vizualizar meus recursos

Contexto:
Dado que eu acesse a página de cadastro empresa x

Cenário: Autenticação Válida
Quando eu digitar nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09@gmail.com"
E a senha "LaFlame15"
Entao deve aparacer uma mensagem de sucesso

Cenário: Campo nome vazio
Quando eu digitar o usuário "kauanvictor09@gmail.com"
E a senha "LaFlame15"
Entao deve aparacer uma mensagem de erro

Cenário: Campo email vazio
Quando eu digitar o nome "kauan victor butura silva"
E a senha "LaFlame15"
Entao deve aparacer uma mensagem de erro

Cenário: Email sem @
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09gmail.com"
E a senha "LaFlame15"
Entao deve aparacer uma mensagem de erro

Cenário: Senha sem letra maiúscula
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09@gmail.com"
E a senha "laFlame15"
Entao deve aparacer uma mensagem de erro

Cenário: Senha sem letra minúscula
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09@gmail.com"
E a senha "LAFlAME15"
Entao deve aparacer uma mensagem de erro

Cenário: Senha sem número
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09@gmail.com"
E a senha "LaFlameee"
Entao deve aparacer uma mensagem de erro

Cenário: Senha com 7 caracteres
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o usuário "kauanvictor09@gmail.com"
E a senha "LaFlame"
Entao deve aparacer uma mensagem de erro

Cenário: Cadastro com campo senha vazio
Quando eu digitar o nome "Kauan Victor Butura Silva"
E o email "kauanvictor09@gmail.com",
Entao deve aparacer uma mensagem de erro
