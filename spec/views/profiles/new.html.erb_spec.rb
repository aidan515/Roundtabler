require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :description => "MyString",
      :interest_1 => "MyString",
      :interest_2 => "MyString",
      :hobby_1 => "MyString",
      :hobby_2 => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_description", :name => "profile[description]"
      assert_select "input#profile_interest_1", :name => "profile[interest_1]"
      assert_select "input#profile_interest_2", :name => "profile[interest_2]"
      assert_select "input#profile_hobby_1", :name => "profile[hobby_1]"
      assert_select "input#profile_hobby_2", :name => "profile[hobby_2]"
    end
  end
end
