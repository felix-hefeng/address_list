require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :sex => 1,
        :phone => "Phone",
        :mobile => "Mobile",
        :address => "Address",
        :position => "Position",
        :image => "Image"
      ),
      stub_model(User,
        :name => "Name",
        :sex => 1,
        :phone => "Phone",
        :mobile => "Mobile",
        :address => "Address",
        :position => "Position",
        :image => "Image"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
