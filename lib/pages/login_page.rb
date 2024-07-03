require 'page-object'
require 'capybara'

class LoginPage
  include PageObject

  page_url = 'https://account.simplepractice.com/saml/auth?SAMLRequest=fVJNj9MwFPwrufnkJk27LWs1lUorRKUFojZw4IJc55W1lNjG75kt%2Fx67HxCkpSdLfjPjmfFboOw7J1aBns0OfgRAylaI4Elbs7YGQw9%2BD%2F6nVvB591SxZyKHIs8RVPAwQt27DpyXiiJipGyfh8jGPOnmMsqybBNFtZFJ8S9fKmWDodcEBtTtpmLfjgBStfOCH8bHCZ8WZcEfp%2FMJP8xmspzMHuYKighFDLA1SNJQxcqinPJizotJM34U4wdRvvnKstpbssp2b7VptfleseCNsBI1CiN7QEFK7FcfnkQ5KsThAkLxvmlqXn%2FaNyz7EqOdY0QAy059Z1Aku%2FeV5K3QIcXd57irVbZcJLQ4x%2FPLf%2Bvi0rlFPpwvLv%2F5MeptN7XttPqVrbrOvqw9SIKKkQ%2FAsnfW95LuO0g3uuXHM1SQlwY1GGL57ZHrvkB73p64LAQnyta2d9JrTC3BKfq8JRii1l3sZAfH5d3alFAJF6%2FreLxY36YPBBWfbJIdZz1d478qfpn9x%2Bif6XD3l78B'

  text_field(:email, :id => 'user_email')
  text_field(:password, :id => 'user_password')
  button(:sign_in, :id => 'submitBtn')

  def login_with(user_model)
    self.email = user_model.email
    self.password = user_model.password
    sign_in
  end
end