Given /^have a person named "([^"]*)"$/ do |name|
  @person = Person.new(:name => name)
end

Given /^the person has a parent named "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^the person has a child named "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
