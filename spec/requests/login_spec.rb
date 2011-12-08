require "spec_helper"


describe "Login" do
  it "Check if the login details don't match" do
    visit "/users/sign_in"
    user = Factory(:user, :email =>"hell@yahoo.com", :password =>"sprout123", :password_confirmation =>"sprout123")
    fill_in "Email",                 :with => "hellsdff@yahoo.com"
    fill_in "Password",              :with => "sproutsdf"
    
    click_button "Sign in"

    page.should have_content("Invalid email or password.")
  end
  it "Check if the login details are correct or not" do
    visit "/users/sign_in"
    user = Factory(:user, :email =>"hell@yahoo.com", :password =>"sprout123", :password_confirmation =>"sprout123")
    fill_in "Email",                 :with => "hell@yahoo.com"
    fill_in "Password",              :with => "sprout123"
    click_button "Sign in"
    page.should have_content("Signed in successfully.")
  end
end

