Given /^I have a person named "([^"]*)"$/ do |name|
  @person = Person.new(:first_name => name, :last_name => name)
  @person.save
end

Given /^the person has a parent named "([^"]*)"$/ do |name|
  @parent = Person.new(:first_name => name, :last_name => name)
  @person.parents = [@parent]
  @person.save
end

Given /^the person has a child named "([^"]*)"$/ do |name|
  @child = Person.new(:first_name => name, :last_name => name)
  @person.children = [@child]
  @person.save
end
