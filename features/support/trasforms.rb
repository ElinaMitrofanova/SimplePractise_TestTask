Transform /^table:ClientDetails$/ do |table|
  table.hashes.map do |row|
    ClientModel.new(
      first_name: row['First Name'],
      last_name: row['Last Name'],
      client_type: row['Client Type']
    )
  end
end