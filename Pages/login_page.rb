require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Login_page
  include Main_Settings

  def login (email, password)
    @login_textbox = @driver.find_element(:xpath, ::Login_textbox_v)
    @password_textbox = @driver.find_element(:xpath, ::Password_textbox_v)
    @login_button = @driver.find_element(:xpath, ::Login_button_v)

    wait_till_ell_is_present(@login_textbox)
    @login_textbox.send_keys email
    @password_textbox.send_keys password
    @login_button.click

  end

  def login_notification_is_displayed
    @login_notification = @driver.find_element(:xpath, ::Login_notification)
    wait_till_ell_is_present(@login_notification)
    fail unless @login_notification.text.include?("You need to sign in or sign up before continuing.")
  end

  def login_notification_is_not_displayed_after_11_seconds
    sleep(11)
    # @login_notification = @driver.find_element(:xpath, ::Login_notification).empty?

    begin
      if @driver.find_element(:xpath, ::Login_notification).displayed?
        assert (false)
      else
        assert (true)
      end
      rescue Selenium::WebDriver::Error::NoSuchElementError
        false
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
    end

  end

end