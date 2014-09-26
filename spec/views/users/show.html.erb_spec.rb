require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :sex => 1,
      :phone => "Phone",
      :mobile => "Mobile",
      :address => "Address",
      :position => "Position",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Phone/)
    rendered.should match(/Mobile/)
    rendered.should match(/Address/)
    rendered.should match(/Position/)
    rendered.should match(/Image/)
  end
end
