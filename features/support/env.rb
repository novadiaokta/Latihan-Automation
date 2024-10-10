require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

# Set path to the ChromeDriver executable
Selenium::WebDriver::Chrome::Service.driver_path = 'C:/Users/sctmuser/Documents/Ruby/driver/chromedriver.exe'
 
# Register the Selenium driver with Capybara
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome).tap do |driver|
    driver.browser.manage.window.maximize
  end
end
 
# Configure Capybara
Capybara.configure do |config|
  config.default_driver = :chrome
  config.default_max_wait_time = 30
end