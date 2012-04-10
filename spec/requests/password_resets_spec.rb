require 'spec_helper'

describe "PasswordResets" do
    it "emails member when requesting password reset" do
      member = Factory(:member)
      visit login_path
      click_link "password"
      fill_in "Email", :with => member.email
      click_button "Reset Password"
      current_path.should eq(root_path)
      page.should have_content("Email sent")
      last_email.to.should include(member.email)
    end
end
