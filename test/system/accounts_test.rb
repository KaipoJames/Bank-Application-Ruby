require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase

  test "A user creates a bank account" do
    user = FactoryBot.create :user, email: "test@account.com", username: "testuser", password: "test"

    visit login_path
    #fill_in "First Name", with: "Test"
    #fill_in "Last Name", with: "Account"
    #fill_in "Username", with: "testuser"
    fill_in "Email", with: "test@account.com"
    fill_in "Password", with: "test"

    click_on "Login"

    visit new_account_path

    fill_in "account[account_number]", with: "11-1111"
    fill_in "account[account_type]", with: "Savings"
    fill_in "account[balance]", with: "50"

    click_on "Create Account"
  
    #assert_selector "h1", text: "Accounts"
  end

  test "A user updates a bank account" do
    user = FactoryBot.create :user, email: "test@account.com", username: "testuser", password: "test"

    visit login_path
    #fill_in "First Name", with: "Test"
    #fill_in "Last Name", with: "Account"
    #fill_in "Username", with: "testuser"
    fill_in "Email", with: "test@account.com"
    fill_in "Password", with: "test"

    click_on "Login"

    visit new_account_path
    fill_in "account[account_number]", with: "11-1111"
    fill_in "account[account_type]", with: "Savings"
    fill_in "account[balance]", with: "50"
    click_on "Create Account"

    click_on "11-1111"

    click_on "Edit"

    fill_in "account[account_number]", with: "11-1111"
    fill_in "account[account_type]", with: "Checking"
    fill_in "account[balance]", with: "50"

    click_on "Update Account"
  end

  test "A user deletes a bank account" do
    user = FactoryBot.create :user, email: "test@account.com", username: "testuser", password: "test"

    visit login_path
    #fill_in "First Name", with: "Test"
    #fill_in "Last Name", with: "Account"
    #fill_in "Username", with: "testuser"
    fill_in "Email", with: "test@account.com"
    fill_in "Password", with: "test"

    click_on "Login"

    visit new_account_path
    fill_in "account[account_number]", with: "11-1111"
    fill_in "account[account_type]", with: "Savings"
    fill_in "account[balance]", with: "50"
    click_on "Create Account"

    click_on "11-1111"

    click_on "Delete"
  end

end
