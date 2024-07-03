require 'json'
require_relative '../models/user_model'

class CredentialsConverter
  def self.convert_to_user_model
    json_data = JSON.parse(File.read(File.expand_path('../../test_data/user_credentials.json', __FILE__)))
    UserModel.new(json_data['email'], json_data['password'])
  end
end