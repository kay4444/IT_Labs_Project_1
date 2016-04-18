require 'test/unit'
require_relative "../Pages/login_page"

class Test_cases_1 < Test::Unit::TestCase

  include Login_page

  def test_login_notification_is_available
    login_notification_is_displayed
  end

  def test_login_notification_is_not_available_after_11_seconds
    login_notification_is_not_displayed_after_11_seconds
  end

  def test_login
    login ('kay444413@ukr.net'),('kay444413@ukr.net')
  end

end