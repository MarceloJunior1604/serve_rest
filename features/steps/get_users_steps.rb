Dado('que tenho uma massa configurada do endpoint Usuarios.get') do 
    @user ||= OpenStruct.new

end
  
Quando('chamar o endpoint Usuarios.get') do
    @user.response = GetUsers.new.get_users
rescue StandardError => e
    @user.error = e
end
  
Então('validar o retorno do endpoint Usuarios.get') do 
    expect(@user.error).to be_nil
    expect(@user.response['quantidade']).to be_an(Numeric)
    expect(@user.response['usuarios'][0]['nome']).to be_an(String)
    
end