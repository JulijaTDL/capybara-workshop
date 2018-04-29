When(/^I am on Appimation home page/) do
  visit('/')
  unless find(:css, '#logo').visible?
    raise "Logo is not visible"
  end
end

#1.
When(/^I open Sign Up/) do
  find(:css, '#signup-b').click
  unless find(:css, '#signup').visible?
    raise "Element is not visible"
  end
end

Then("I enter {string}, {string} and {string} in Sign Up form") do |email, password, name|
  find(:css, '#signup input[name="login"]').send_keys(email)
  find(:css, 'input[name="password1"]').send_keys(password)
  find(:css, 'input[name="password2"]').send_keys(password)
  find(:css, 'input[name="project_name"]').send_keys(name)
  sleep(1)
end

Then("I close Sign Up") do
  find(:css, '#signup .closecross').click
  #find(:css, '#signup').should_not be_visible
  unless find(:css, '#signup').visible?
    raise "Element is not visible"
  end
end



#2.
When(/^I open Sign In/) do
  find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "Element is not visible"
  end
end

Then("I enter invalid information {string} and {string}") do |login, password|
  find(:css, '#login input[name="login"]').send_keys(login)
  find(:css, 'input[name="password"]').send_keys(password)
  sleep(1)
end

Then("I try to login") do
  find(:css, '.button-block').click
  unless find(:xpath, "//span[contains(text(), 'Username or password is not correct')]")
    raise "Element is not visible"
  end
end