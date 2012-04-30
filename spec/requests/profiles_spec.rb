require 'spec_helper'

describe "Create a profile" do
    it "signs up and creates a profile successfully" do
        visit signup_path
        fill_in "Full name", :with => "Foo Bar"
        fill_in "Email", :with => "foo@bar.com"
        fill_in "Password", :with => "secret"
        fill_in "Password confirmation", :with => "secret"
        click_button "Sign up"
        current_path.should eq("/profiles/new")
        attach_file('profile_image', '/Users/aidancorbett/Documents/rails_projects/roundtabler/app/assets/images/rails.png')
        fill_in "One line description", :with => "Fake person"
        fill_in "profile_interest_1", :with => "Mining"
        fill_in "profile_interest_2", :with => "Entrepreneurship"
        fill_in "profile_hobby_1", :with => "Tennis"
        fill_in "profile_hobby_2", :with => "Rugby"
        fill_in :employer, :with => "London Business School"
        click_button "Create profile"
        page.should have_content("Thank you")
      end
end
