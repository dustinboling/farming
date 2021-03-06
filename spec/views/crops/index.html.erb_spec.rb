require 'spec_helper'

describe "crops/index" do
  before(:each) do
    assign(:crops, [
      stub_model(Crop,
        :name => "Name",
        :description => "MyText",
        :farm => nil
      ),
      stub_model(Crop,
        :name => "Name",
        :description => "MyText",
        :farm => nil
      )
    ])
  end

  it "renders a list of crops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
