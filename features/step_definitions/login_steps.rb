Given("the user is logged in to SimplePractice") do
  @user_model = CredentialsConverter.convert_to_user_model
  on(LoginPage).login_with(@user_model)
end