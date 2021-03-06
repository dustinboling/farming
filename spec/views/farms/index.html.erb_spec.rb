require 'spec_helper'

describe "farms/index" do
  before(:each) do
    assign(:farms, [
      stub_model(Farm,
        :name => "Name",
        :description => "MyText",
        :user => nil
      ),
      stub_model(Farm,
        :name => "Name",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of farms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
