require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "Signing_up" do
    visit signup_path

    fill_in "First Name", with: "Test"
    fill_in "Last Name", with: "Account"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "test"

    click_on "Sign Up"

    #assert_text "You are now registered!"
    #assert_selector "nav", text: "My Profile"
    refute_selector "nav", text: "Login"
  end

  test "Signing_up doesn't work with errors" do
    visit signup_path

    fill_in "First Name", with: "Test"
    fill_in "Last Name", with: "Account"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "test"

    click_on "Sign Up"

    assert_text "Fix Errors"
    #assert_selector "nav", text: "My Profile"
    refute_selector "nav", text: "Login"
  end

end
