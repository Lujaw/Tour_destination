require "spec_helper"

feature "Registration" do
  scenario "check whether passwords matches or not" do
    visit "/users/sign_up"
    user = Factory(:user, :email =>"new1@gmail.com" , :password=>"sprout1" ,:password_confirmation=>"sprout1")
    fill_in "Email",                 :with => "user_email@gmail.com"
    fill_in "Password",              :with => "password"
    fill_in "Password confirmation", :with => "fasdf"
    click_button "Sign up"
    page.should have_content("Password doesn't match confirmation")
  end
  
  scenario "whether emails is unique" do
    visit "/users/sign_up"
    user = Factory(:user, :email =>"new1@gmail.com" , :password=>"sprout1" ,:password_confirmation=>"sprout1")
    fill_in "Email",                 :with => user.email
    fill_in "Password",              :with => user.password
    fill_in "Password confirmation", :with => user.password_confirmation
    click_button "Sign up"
    page.should have_content("Email has already been taken")
  end
  scenario "allows new users to register with an email address and password" do
    visit "/users/sign_up"
    user = Factory(:user, :email =>"sprout@sprout.com" , :password=>"sprout1" ,:password_confirmation=>"sprout1")
    fill_in "Email",                 :with => "asdfas@gmail.com"
    fill_in "Password",              :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    page.should have_content("Welcome! You have signed up successfully.")
  end    
end
