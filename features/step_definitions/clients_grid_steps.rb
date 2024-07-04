Then("the user verifies that the new client appears on the Clients grid") do |table|
  client_details = table.hashes.first
  full_name = client_details['Full Name']
  client_type = client_details['Client type']
  relationship = client_details['RelationShip']

  on(ClientsPage).utility_search_client(@client_model.first_name, @client_model.last_name)
  ##Assertion should be implemented after fixing config issues
end