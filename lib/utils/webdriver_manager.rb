require 'selenium-webdriver'
require 'singleton'

class WebDriverManager
  include Singleton

  attr_reader :driver

  def initialize
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 10
  end

  def quit_driver
    @driver.quit if @driver
  end
end