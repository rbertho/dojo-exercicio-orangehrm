# busca_texto.feature
#language: pt
#utf-8

Funcionalidade: Editar funcionário
Eu como admin do site orangehrm
Quero logar no site e editar os dados de funcionário existente
Para ter um funcionario com os dados atualizados

Cenario: Editar os dados de um funcionário
	Dado que esteja na home do site orangehrm 
		E logado como Admin

	Quando acessar o link PIM 
		E clicar no primeiro funcionário da lista 
		E clicar em editar 
		E editar os dados do funcionario 
		E clicar em Save
		
	Entao validar se o funcionário foi alterado com sucesso, validando a msg Successfully Saved