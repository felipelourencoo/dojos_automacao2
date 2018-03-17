class HomePage < SitePrism::Page

  # Page Object do menu
  element :btnPim, '#menu_pim_viewPimModule'
  element :btnAdd, '#btnAdd'

  # Metodo confere na home
    def validarHome()
    assert_text("Dashboard")
    end

 # Metodo para clicar noss botões do menu
    def abrirMenuPIM()
      btnPim.click
      btnAdd.click
    end

end
