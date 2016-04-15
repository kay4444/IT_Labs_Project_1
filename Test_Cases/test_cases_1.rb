require 'test/unit'
# require_relative "../Settings/main_settings"
require_relative "../Pages/login_page"

class Test_cases_1 < Test::Unit::TestCase

  # include Main_Settings
  include Login_page

  def test_login
    # setup
    login
    # teardown
  end

end