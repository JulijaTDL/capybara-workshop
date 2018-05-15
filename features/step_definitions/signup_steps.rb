When(/^I am on Appimation home page/) do
  # visit('/')
  # unless find(:css, '#logo').visible?
  #   raise "Logo not visible"
  # end
  @pages.page_home.load
  @pages.page_home.isVisible
end

#1.

When(/^I open Sign Up/) do
  # find(:css, '#start_button').click
  # unless find(:css, '#signup').visible?
  #   raise "element not visible"
  # end
  @pages.page_home.openTryNow
end

Then("I enter {string}, {string}, {string} and {string} in Sign Up form") do |email, pas1, pas2, projName|
  # unless find(:css, '#name').visible?
  #   raise "name not visible"
  # end
  # find(:css, '#name').send_keys(name)
  # sleep(2)
  # find(:css, '#name').native.clear
  #
  # find(:css, '#name').send_keys(name2)
  # sleep(2)

  @pages.page_home.enterEmail(email)
  @pages.page_home.enterPassword1(pas1)
  @pages.page_home.enterPassword2(pas2)
  @pages.page_home.enterProjName(projName)
  sleep(2)
end

Then("I close Sign Up") do
  @pages.page_home.closeTryNow
end

#2.

When(/^I open Sign In/) do
  @pages.page_home.openSignIn
end

Then("I enter invalid information {string} and {string}") do |login, pas|
  @pages.page_home.enterLogin(login)
  @pages.page_home.enterPassword(pas)
  sleep(2)
end

Then("I try to login") do
  @pages.page_home.invalidLogin
end


