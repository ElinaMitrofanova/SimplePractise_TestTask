When("the user adds a new client") do |client_details|
  @client_model = client_details
  on(Header).open_create_client_form
  on(CreateClientForm).create_client(@client_model)
end