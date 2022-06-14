# frozen_string_literal: true
# RegisterUser
require 'httparty'

class GetUsers
  include HTTParty
  base_uri 'https://serverest.dev/'
  headers 'Content-Type': 'application/json'

  def get_users
    self.class.get('/usuarios')
  end
end
 