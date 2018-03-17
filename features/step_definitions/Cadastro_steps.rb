Dado("que eu faça login no sistema") do
  @login_page = LoginPage.new
  @login_page.load()
  @login_page.login('Admin', 'admin')
end

Dado("que esteja na página inicial do site Orange HMR") do
  @Home_page = HomePage.new
  @Home_page.validarHome()
end

Quando("efetuar um cadastro dos empregados inserindo {string} {string} {string} {string} {string}") do |inicio, meio, fim, usuario, senhausu|
  @Home_page.abrirMenuPIM()
  @Cadastro_page = CadastroPage.new
  @Cadastro_page.cadastroPIM  inicio, meio, fim, usuario, senhausu
end

Entao("deverá aparecer mensagem de sucesso") do
  expect(page).to have_content("Personal Details")
end
