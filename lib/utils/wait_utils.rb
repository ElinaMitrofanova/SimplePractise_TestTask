require 'selenium-webdriver'

class WaitUtils
  def self.instance(driver)
    @instance ||= new(driver)
  end

  private_class_method :new

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  def wait_for_element
    yield if block_given?
    @wait.until { yield.displayed? }
  end
end