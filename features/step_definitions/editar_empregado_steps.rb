Quando(/^clicar no primeiro funcionário da lista$/) do
  find_link('Ava').click
end

Quando(/^clicar em editar$/) do
  find('#btnSave').click
end

Quando(/^editar os dados do funcionario$/) do
	fill_in('personal[txtEmpMiddleName]', :with => 'Magalhães')
	fill_in('personal[txtEmpFirstName]', :with => 'José')
end

Quando(/^clicar em Save$/) do
  find('#btnSave').click
end

Entao(/^validar se o funcionário foi alterado com sucesso, validando a msg Successfully Saved$/) do
	assert_text('Successfully Saved')
end