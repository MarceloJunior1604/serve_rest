#language:pt

Funcionalidade: API Usuários
    Eu como usuário do sistema
    Quero que ao utilizar a API de users
    Seja validada o comportamento esperado

    Swagger: https://serverest.dev/usuarios

    # @#marcelo_junior
    # @get_users.get
    # Cenario: [CONTRACT] Validar o endpoint Usuarios.get
    #     Enviar uma requisição para o endpoint Usuarios.get
    #     Validar o retorno dos usuários cadastrados
    #     Validar o tipo de cada campo no response

    #     Dado que tenho uma massa configurada do endpoint Usuarios.get
    #     Quando chamar o endpoint Usuarios.get
    #     Então validar o retorno do endpoint Usuarios.get


    # @#marcelo_junior
    # @register_user.post
    # Cenario: [CONTRACT] Validar o endpoint Usuarios.post
    #     Enviar uma requisição para o endpoint Usuarios.post
    #     Validar o retorno dos usuários cadastrados
    #     Validar o tipo de cada campo no response

    #     Dado que tenho uma massa configurada do endpoint Usuarios.post para o cenário "<tipo>"
    #     Quando chamar o endpoint Usuarios.post
    #     Então validar o retorno do endpoint Usuarios.post para o cenário "<tipo>"

    #     Exemplos:
    #         |   tipo   |
    #         | positivo |
    #         | negativo |

    @#marcelo_junior
    @put_user.put
    Cenario: [CONTRACT] Validar o endpoint Usuarios.put
        Enviar uma requisição para o endpoint Usuarios.put
        Validar o retorno dos usuários cadastrados
        Validar o tipo de cada campo no response

        Dado que tenho uma massa configurada do endpoint Usuarios.put para o cenário "<tipo>"
        Quando chamar o endpoint Usuarios.put
        Então validar o retorno do endpoint Usuarios.put para o cenário "<tipo>"

        Exemplos:
            |   tipo   |
            | positivo |
            | negativo |
