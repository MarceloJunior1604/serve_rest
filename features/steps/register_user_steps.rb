require 'pry'

Dado('que tenho uma massa configurada do endpoint Usuarios.post para o cenário {string}') do |type|
    @user ||= OpenStruct.new
    @user.payload = type.eql?('positivo') ? @payload : {'nome': 'prego do masselo'}
end
  
Quando('chamar o endpoint Usuarios.post') do
    @user.response = RegisterUser.new.register_user(@user.payload)
rescue StandardError => e
    @user.error = e
end
  
Então('validar o retorno do endpoint Usuarios.post para o cenário {string}') do |type|
    expect(@user.error).to be_nil

    if type.eql?('positivo')
        expect(@user.response.code).to eql 201
        expect(@user.response['message']).to be_an(String)
        expect(@user.response['_id']).to be_an(String)
    else
        expect(@user.response.code).to eql 400
        expect(@user.response).not_to be_nil 
    end
end