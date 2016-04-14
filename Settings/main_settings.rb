require 'test/unit'
require 'selenium-webdriver'

module Main_Settings

  def setup
    @driver = Selenium::WebDriver.for :firefox
    # @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    # browser = Watir::Browser.new :firefox
    # browser.goto 'http://demo.redmine.org'
    @driver.navigate.to 'http://alpha.vloop.io/'
  end

  def teardown
    @driver.quit
  end

end