require 'page-object'
class ClientGrid
  include PageObject

  elements(:client_list, :div, xpath: ".//div[contains(@class, 'client-list-item ')]")
  element(:relationship, xpath: ".//div/p[@class ='clinician-name']")
  element(:client_type, xpath: ".//div/span[@class = 'badge secondary steel']")

  # The main idea is to get all the rows from the grid, filter by full name and interact with the desired
  def find_client_by_full_name(full_name)
    link = element(xpath: ".//a[@class='ember-view record-name' and contains(text(), '#{full_name}')]")
    link if link.displayed?
  end

  def get_client_type
    client_type.text # Should be updated after all configuration issues are fixed
  end
end