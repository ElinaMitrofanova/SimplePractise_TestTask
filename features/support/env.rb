# Set the default driver (choose one: :selenium, :selenium_chrome, :selenium_chrome_headless, :rack_test)
require 'capybara/cucumber'
require 'capybara'
require 'page-object'
require 'selenium/webdriver'
require_relative '../../lib/pages/login_page'
require_relative '../../lib/utils/credentials_converter'
require_relative '../../lib/components/client_grid'
require_relative '../../lib/pages/header'
require_relative '../../lib/pages/clients_page'
require_relative '../../lib/pages/create_client_form'
require_relative '../../lib/models/user_model'
require_relative '../../lib/models/client_model'


Capybara.default_driver = :selenium