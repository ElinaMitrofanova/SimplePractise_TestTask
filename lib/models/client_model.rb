class ClientModel
  attr_accessor :first_name, :last_name, :client_type

  def initialize(params = {})
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @client_type = params[:client_type]
  end
end