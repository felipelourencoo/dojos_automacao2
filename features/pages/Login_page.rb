class LoginPage < SitePrism::Page

    # Define a URL
    set_url 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'

    # PageObject para Logar
    element :txtUsername, '#txtUsername'
    element :txtPassword, '#txtPassword'
    element :btnLogin, '#btnLogin'

    def login (usuario, senha)
      txtUsername.set(usuario)
      txtPassword.set(senha)
      btnLogin.click
    end

end
