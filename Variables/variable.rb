require 'selenium-webdriver'

  Login_textbox_v = "//div/input[@id='user_email']"
  Password_textbox_v = "//div/input[@id='user_password']"
  Login_button_v = "//div/input[@value='Log In']"
  Login_notification = "//div[text()='You need to sign in or sign up before continuing.']"

  def wait_till_ell_is_present(ell)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {ell.displayed?}
  end