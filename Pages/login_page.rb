require 'test/unit'
require 'selenium-webdriver'
require "../Variables/variable"
require "../Settings/main_settings"

module Login_page
  # include Variable
  include Main_Settings

  def login
    @login_textbox = @driver.find_element(:xpath, ::Login_textbox_v)
    @password_textbox = @driver.find_element(:xpath, ::Password_textbox_v)
    @login_button = @driver.find_element(:xpath, ::Login_button_v)

    wait_till_ell_is_present(@login_textbox)
    @login_textbox.send_keys "kay444413@ukr.net"
    @password_textbox.send_keys "kay444413@ukr.net"
    @login_button.click

  end
end