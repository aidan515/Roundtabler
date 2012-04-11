require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :description => "Description",
        :interest_1 => "Interest 1",
        :interest_2 => "Interest 2",
        :hobby_1 => "Hobby 1",
        :hobby_2 => "Hobby 2"
      ),
      stub_model(Profile,
        :description => "Description",
        :interest_1 => "Interest 1",
        :interest_2 => "Interest 2",
        :hobby_1 => "Hobby 1",
        :hobby_2 => "Hobby 2"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interest 1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interest 2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hobby 1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hobby 2".to_s, :count => 2
  end
end
