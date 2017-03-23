Dado(/^que esteja na home do site orangehrm$/) do
	visit('https://enterprise-demo.orangehrmlive.com/')
end

Dado(/^logado como Admin$/) do
	fill_in('txtUsername', :with => 'Admin')
	fill_in('txtPassword', :with => 'admin')
  	find('#btnLogin').click
end

Quando(/^acessar o link PIM$/) do
  find('#menu_pim_viewPimModule').click
end

Quando(/^clicar em Add Employee$/) do
  find('#menu_pim_addEmployee').click
end

Quando(/^preencher os dados do novo funcionário$/) do
  fill_in('firstName', :with => 'Rodrigo')
	fill_in('lastName', :with => 'Bertho')
	select('New York Sales Office', :from => 'location')
end

Quando(/^clicar em salvar$/) do
	find('#btnSave').click
end

Entao(/^validar se o funcionário foi cadastrado com sucesso, validando a msg Successfully Saved$/) do
	assert_text('Successfully Saved')
end