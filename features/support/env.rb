#Sobe em memória as Gems informadas
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'page-object'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrao
Capybara.default_driver = :selenium

#Timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o projeto
Capybara.page.driver.browser.manage.window.maximize
