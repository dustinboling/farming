require 'spec_helper'

describe "beans/edit" do
  before(:each) do
    @bean = assign(:bean, stub_model(Bean,
      :first_name => "MyString",
      :last_name => "MyString",
      :spouse_name => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :farm => nil
    ))
  end

  it "renders the edit bean form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bean_path(@bean), "post" do
      assert_select "input#bean_first_name[name=?]", "bean[first_name]"
      assert_select "input#bean_last_name[name=?]", "bean[last_name]"
      assert_select "input#bean_spouse_name[name=?]", "bean[spouse_name]"
      assert_select "input#bean_street_address[name=?]", "bean[street_address]"
      assert_select "input#bean_city[name=?]", "bean[city]"
      assert_select "input#bean_state[name=?]", "bean[state]"
      assert_select "input#bean_zip[name=?]", "bean[zip]"
      assert_select "input#bean_farm[name=?]", "bean[farm]"
    end
  end
end
