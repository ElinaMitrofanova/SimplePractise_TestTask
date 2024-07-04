require_relative '../../lib/utils/webdriver_manager'

Before do
  @driver = WebDriverManager.instance.driver
  @driver.get('https://account.simplepractice.com/')
end

After do
  WebDriverManager.instance.quit_driver
end