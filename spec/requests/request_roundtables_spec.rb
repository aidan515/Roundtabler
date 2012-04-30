require 'spec_helper'

describe "RequestRoundtables" do
  it "requests a roundtable correctly if you are logged in" do
    member = Factory(:member)
    member2 = Factory(:member)
    roundtable = Factory(:roundtable, :member => member)
    request = Factory(:request, :roundtable => roundtable, :member => member2)
    profile = Factory(:profile)
    visit login_path
    fill_in "Email", :with => member2.email
    fill_in "Password", :with => member2.password
    click_button "Log In"
    page.should have_content("Logged in!")
    click_link "Roundtabler"
    click_link "Request a seat"
    # save_and_open_page
    page.should have_content("notified")
  end
  
  it "sends an email once you have requested a seat" do
    member = Factory(:member)
    member2 = Factory(:member)
    roundtable = Factory(:roundtable, :member => member)
    request = Factory(:request, :roundtable => roundtable, :member => member2)
    profile = Factory(:profile)
    visit login_path
    fill_in "Email", :with => member2.email
    fill_in "Password", :with => member2.password
    click_button "Log In"
    page.should have_content("Logged in!")
    click_link "Roundtabler"
    click_link "Request a seat"
    page.should have_content("notified")
    last_email.to.should include(member.email)
  end
end

