When(/^I am on Appimation home page/) do
  visit('/')
#1.1
  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")
  #find(:css, "#video")
  #find(:css, ".feature-image")
  #find(:xpath, "//h3[contains(text(), 'Team up')]/preceding-sibling::img")

#1.2
  find(:css, '#signup-b')
  find(:xpath, "//button[@id = 'signup-b']")

#1.3
  find(:css, '#cta') #$$("section[id = 'cta']")
  find(:xpath, "//section[@id = 'cta']") #$x("//section[@id = 'cta']")
  
#1.4
  find(:css, '#name') #$$("input[id = 'name']")
  find(:xpath, "//input[@id = 'name']")
  
#1.5
  find(:css, '#email')
  find(:xpath, "//input[@id = 'email']")

#1.6
  find(:css, '#contactus-message') #$$("textarea[id = 'contactus-message']")
  find(:xpath, "//textarea[@id = 'contactus-message']")

#1.7
  find(:css, '#contactus-button') #$$("input[id = 'contactus-button']")
  find(:xpath, "//input[@id = 'contactus-button']")

#1.8
  find(:css, '.icons li a')
  find(:xpath, "//ul[@class='icons']/li/a")

#1.9
  all(:css, '.features-row') #div[class = 'features-row']
  all(:xpath, "//section[@class='box special features']/div[@class='features-row']")

#1.10
  find(:css, '.features-row:first-child section:first-child img') #$$("div[class = 'features-row']:first-child section:first-child img")
  find(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/preceding-sibling::img")

end
