When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

#1
When(/^I open Try now/) do
  @tests.login_tests.open_try_now
end

Then("I enter information in Try now form") do
  @tests.login_tests.enter_info_in_try_now()
end

Then("I close Try now") do
  @tests.login_tests.close_try_now
end


#2

When(/^I open Sign In/) do
  @tests.login_tests.open_sign_in
end

Then("I enter invalid information") do
  @tests.login_tests.submit_invalid_info()
end

Then("I try to login") do
  @tests.login_tests.invalid_login
end





