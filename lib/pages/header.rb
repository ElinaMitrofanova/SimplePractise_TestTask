require 'page-object'

class Header
  include PageObject

  button(:create, :xpath => ".//button[@area-label = 'create']")
  button(:create_client, :xpath => ".//div[contains(@id, 'basic-dropdown-content')]/div/button")

  def open_create_client_form
    create.click
    create_client.click
  end
end