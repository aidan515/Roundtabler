require 'spec_helper'

describe "creating a roundtable" do
    it "logs in and creates a roundtable" do
      member = Factory(:member)
      roundtable = Factory(:roundtable)
      visit login_path
      fill_in "Email", :with => member.email
      fill_in "Password", :with => member.password
      click_button "Log In"
      page.should have_content("Logged in!")
      click_link "Create roundtable"
      # save_and_open_page
      fill_in "Topic", :with => roundtable.topic
      choose('4')
      click_button "Create roundtable"
      page.should have_content("Thank you")
    end
    
    it "cannot create a roundtable if you are logged out" do
      visit new_roundtable_path
      current_path.should eq("/login")     
    end
    
    it "cannot create a roundtable without a topic" do
      member = Factory(:member)
      roundtable = Factory(:roundtable)
      visit login_path
      fill_in "Email", :with => member.email
      fill_in "Password", :with => member.password
      click_button "Log In"
      page.should have_content("Logged in!")
      click_link "Create roundtable"
      # save_and_open_page
      # fill_in "Topic", :with => roundtable.topic
      choose('4')
      click_button "Create roundtable"
      page.should have_content("can't be blank")      
    end  
    
end

