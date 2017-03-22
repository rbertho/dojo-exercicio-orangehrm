#Dado(/^que esteja na home do site orangehrm logado como Admin$/) do
#	visit('https://enterprise-demo.orangehrmlive.com/')
#	fill_in('txtUsername', :with => 'Admin')
#	fill_in('txtPassword', :with => 'admin')
# 	find('#btnLogin').click
#end

Quando(/^acessar o link PIM e clicar no primeiro funcionário da lista e clicar em editar e editar os dados do funcionario e clicar em Save$/) do
	find('#menu_pim_viewPimModule').click
	find_link('Ava').click

	# Editar
	find('#btnSave').click

	# Alterar os campos dos conteúdos desejados
	fill_in('personal[txtEmpMiddleName]', :with => 'Magalhães')
	fill_in('personal[txtEmpFirstName]', :with => 'José')

	# Salvar
	find('#btnSave').click
end

Entao(/^validar se o funcionário foi alterado com sucesso, validando a msg Successfully Saved$/) do
	assert_text('Successfully Saved')
end