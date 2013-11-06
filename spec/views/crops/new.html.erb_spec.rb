require 'spec_helper'

describe "crops/new" do
  before(:each) do
    assign(:crop, stub_model(Crop,
      :name => "MyString",
      :description => "MyText",
      :farm => nil
    ).as_new_record)
  end

  it "renders new crop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", crops_path, "post" do
      assert_select "input#crop_name[name=?]", "crop[name]"
      assert_select "textarea#crop_description[name=?]", "crop[description]"
      assert_select "input#crop_farm[name=?]", "crop[farm]"
    end
  end
end
