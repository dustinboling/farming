require 'spec_helper'

describe "farms/show" do
  before(:each) do
    @farm = assign(:farm, stub_model(Farm,
      :name => "Name",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
