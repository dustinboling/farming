require 'spec_helper'

describe "farms/new" do
  before(:each) do
    assign(:farm, stub_model(Farm,
      :name => "MyString",
      :description => "MyText",
      :user => nil
    ).as_new_record)
  end

  it "renders new farm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", farms_path, "post" do
      assert_select "input#farm_name[name=?]", "farm[name]"
      assert_select "textarea#farm_description[name=?]", "farm[description]"
      assert_select "input#farm_user[name=?]", "farm[user]"
    end
  end
end
