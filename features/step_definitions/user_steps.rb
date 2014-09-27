Given /^I have users named (.+)$/ do |users|
  users.split(', ').each do |user|
    User.create!(:name => user, :address => 'Shanghai', :mobile => '13811118888')
  end
end

Given /^I have no users$/ do
	User.delete_all
end

Then /^I should have ([0-9]+) users?$/ do |count|
	User.count.should == count.to_i
end

When /^I go to (.+)$/ do |path|
	visit path_to(path)
end

Then /^I should see (.+)$/ do |name|
	page.should have_content(name)
end

And /^I click (.+)$/ do |link_name|
	click_link(link_name)
end

And /^I press (.+)$/ do |link_name|
	click_button(link_name)
end

Then /^I fill (.+) input field with (.+)$/ do |filed_name, value|
	if value == 'null'
		fill_in("user_#{filed_name}", :with => nil)
	else
		fill_in("user_#{filed_name}", :with => value)
	end
end