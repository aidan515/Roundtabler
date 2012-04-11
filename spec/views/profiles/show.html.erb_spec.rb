require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :description => "Description",
      :interest_1 => "Interest 1",
      :interest_2 => "Interest 2",
      :hobby_1 => "Hobby 1",
      :hobby_2 => "Hobby 2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Interest 1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Interest 2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hobby 1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hobby 2/)
  end
end
