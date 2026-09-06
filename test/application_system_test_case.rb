require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]

  # Devise's sign_in helper sets up a Rack session, which the real browser
  # Selenium drives does not share. System tests log in through the form instead.
  def sign_in_as(user, password: "password123")
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: password
    click_on "Log in"
    # Wait for Turbo to finish the redirect before the caller navigates away,
    # otherwise the session cookie may not be set yet.
    assert_selector "a", text: "Sign out"
  end
end
