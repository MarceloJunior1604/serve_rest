require_relative 'base_class'

class RegisterUser < Base

    headers 'Content-Type': 'application/json'

    def register_user(payload)
        self.class.post('/usuarios', body: payload.to_json)
    end
end