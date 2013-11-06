require 'spec_helper'

describe "beans/index" do
  before(:each) do
    assign(:beans, [
      stub_model(Bean,
        :first_name => "First Name",
        :last_name => "Last Name",
        :spouse_name => "Spouse Name",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :farm => nil
      ),
      stub_model(Bean,
        :first_name => "First Name",
        :last_name => "Last Name",
        :spouse_name => "Spouse Name",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :farm => nil
      )
    ])
  end

  it "renders a list of beans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Spouse Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
