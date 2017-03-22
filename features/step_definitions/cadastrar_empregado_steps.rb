Dado(/^que esteja na home do site orangehrm logado como Admin$/) do
	visit('https://enterprise-demo.orangehrmlive.com/')
	fill_in('txtUsername', :with => 'Admin')
	fill_in('txtPassword', :with => 'admin')
  	find('#btnLogin').click
end

Quando(/^acessar o link PIM e clicar em Add Employee e preencher os dados do novo funcionário$/) do
	find('#menu_pim_viewPimModule').click
	find('#menu_pim_addEmployee').click
	fill_in('firstName', :with => 'Rodrigo')
	fill_in('lastName', :with => 'Bertho')
	select('New York Sales Office', :from => 'location')
	find('#btnSave').click
end

Entao(/^validar se o funcionário foi cadastrado com sucesso, validando a msg Successfully Saved$/) do
	assert_text('Successfully Saved')
end