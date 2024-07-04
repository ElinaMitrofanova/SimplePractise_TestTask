require 'page-object'
require '../models/client_model'

class CreateClientForm
  include PageObject

  text_field(:first_name, :id => 'user_email')
  text_field(:last_name, :id => 'user_password')
  button(:continue, :xpath => ".//button[contains(text(), 'Continue')]")


  def client_type(type)
    radio_button(xpath: "//input[@name='clientType' and @value='#{type}']")
  end

  def fill_required_fields(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
  end

  #We can extend the client model and then add new actions to create a client form.
  def create_client(client_model)
    fill_required_fields(client_model.first_name, client_model.last_name)
    if !client_model.type.nil?
      client_type(client_model.type).click
    end
    continue
  end
end