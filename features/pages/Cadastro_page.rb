class CadastroPage < SitePrism::Page

    # PageObject para cadastrar
    element :txtFirstname, '#firstName'
    element :txtMiddlename, '#middleName'
    element :txtLastname, '#lastName'
    # Checkbox
    element :chckbox, '#chkLogin'
    element :txtUsername, '#user_name'
    element :txtPassword, '#user_password'
    element :txtConfPassword, '#re_password'
    element :combobox, :css, '#status > option:nth-child(2)'
    element :save, '#btnSave'

    # Metodos de cadastro
    def cadastroPIM (inicio, meio, fim, usuario, senhausu)
      txtFirstname.set(inicio)
      txtMiddlename.set(meio)
      txtLastname.set(fim)
      chckbox.click
      txtUsername.set(usuario)
      txtPassword.set(senhausu)
      txtConfPassword.set(senhausu)
      combobox.click
      save.click
    end

end
