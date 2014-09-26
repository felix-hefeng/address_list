require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :sex => 1,
      :phone => "MyString",
      :mobile => "MyString",
      :address => "MyString",
      :position => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_sex[name=?]", "user[sex]"
      assert_select "input#user_phone[name=?]", "user[phone]"
      assert_select "input#user_mobile[name=?]", "user[mobile]"
      assert_select "input#user_address[name=?]", "user[address]"
      assert_select "input#user_position[name=?]", "user[position]"
      assert_select "input#user_image[name=?]", "user[image]"
    end
  end
end
