require 'page-object'
require_relative '../components/client_grid'

class ClientsPage
  include PageObject

  text_field(:utility_search, :class => 'utility-search')
  page_section(:client_grid, ClientGrid, xpath: "//div[@id='client-grid']")

  def utility_search_client(first_name, last_name)
    self.utility_search = "#{first_name} #{last_name}"
    self.utility_search_element.send_keys(:enter)
  end
end