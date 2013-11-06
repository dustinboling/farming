require 'spec_helper'

describe "beans/show" do
  before(:each) do
    @bean = assign(:bean, stub_model(Bean,
      :first_name => "First Name",
      :last_name => "Last Name",
      :spouse_name => "Spouse Name",
      :street_address => "Street Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :farm => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Spouse Name/)
    rendered.should match(/Street Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(//)
  end
end
