# busca_texto.feature
#language: pt
#utf-8

Funcionalidade: Cadastrar funcionário
Eu como admin do site orangehrm
Quero logar no site e cadastrar um novo funcionário
Para ter um novo funcionario da lista de empregados

Cenario: Cadastrar um novo funcionário
	Dado que esteja na home do site orangehrm 
		E logado como Admin

	Quando acessar o link PIM 
		E clicar em Add Employee 
		E preencher os dados do novo funcionário
		E clicar em salvar

	Entao validar se o funcionário foi cadastrado com sucesso, verificando o seu nome na tela de detalhes de usuário 

	