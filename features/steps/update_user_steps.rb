require 'pry'

Dado('que tenho uma massa configurada do endpoint Usuarios.put para o cenário {string}') do |type|
    @user ||= OpenStruct.new
    binding.pry

    if type.eql?('positivo')
        @teste =  step "que tenho uma massa configurada do endpoint Usuarios.post para o cenário '#{type}'"
        @registered_user = step 'chamar o endpoint Usuarios.post'
    else
        @user.id = 'masselo_gosta_do_prego'
    end
    # @user.id = type.eql?('positivo') ? step ("Dado que tenho uma massa configurada do endpoint Usuarios.post para o cenário '#{type}'") : 'teste_prego_do_masselo'
end
  
Quando('chamar o endpoint Usuarios.put') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('validar o retorno do endpoint Usuarios.put para o cenário {string}') do |type|
    pending # Write code here that turns the phrase above into concrete actions
end