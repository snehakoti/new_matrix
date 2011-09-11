#Given /^I am on the home page$/ do
# visit path_to(index)
#end

When /^I choose the link "([^"]*)"$/ do |arg1|
  @would_have_clicked = page.find_link(arg1)[:href]
end

Then /^I should be directed to the "([^"]*)" page$/ do |arg1|
 @would_have_clicked.should == "/"+ arg1
end

Then /^I should see the home page$/ do
 page.should have_content("Paired Matrix Home Page")
end