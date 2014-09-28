Given /^I have departments named (.+)$/ do |departments|
  departments.split(', ').each do |department|
    Department.create!(:name => department)
  end
end

Given /^I have no departments$/ do
	Department.delete_all
end

Then /^I create a user named (.+) with department (.+)$/ do |user, department|
	d = Department.find_by_name(department)
	User.create(name: user, address: 'Shanghai', mobile: '13522221111', department: d)
end

Then /^I should have ([0-9]+) departments?$/ do |count|
	Department.count.should == count.to_i
end

Then /^I fill (.+) input fields with (.+)$/ do |filed_name, value|
	if value == 'null'
		fill_in("department_#{filed_name}", :with => nil)
	else
		fill_in("department_#{filed_name}", :with => value)
	end
end