# busca_texto.feature
#language: pt
#utf-8

Funcionalidade: Cadastrar funcionário
Eu como admin do site orangehrm
Quero logar no site e cadastrar um novo funcionário
Para ter um novo funcionario da lista de empregados

Cenario: Cadastrar um novo funcionário
	Dado que esteja na home do site orangehrm logado como Admin
	Quando acessar o link PIM e clicar em Add Employee e preencher os dados do novo funcionário
	Entao validar se o funcionário foi cadastrado com sucesso, validando a msg Successfully Saved 