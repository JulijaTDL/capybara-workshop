class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @form_sign_up = Element.new(:css, '#signup')
    @button_close_try_now = Element.new(:css, '#signup .closecross')
    @input_email_sign_up = Element.new(:css, '#signup input[name="login"]')
    @input_pas1_sign_up = Element.new(:css, 'input[name="password1"]')
    @input_pas2_sign_up = Element.new(:css, 'input[name="password2"]')
    @input_projName_sign_up = Element.new(:css, 'input[name="project_name"]')
    @login_button = Element.new(:css, '#login-b')
    @form_sign_in = Element.new(:css, '#login')
    @input_login = Element.new(:css, '#login [name="login"]')
    @input_password = Element.new(:css, '#login [name="password"]')
    @button_to_login = Element.new(:css, '.button-block')
    @login_error = Element.new(:xpath, '//span[contains(text(), "Username or password is not correct")]')
  end

  def isVisible
    @button_start.isVisible
  end

  def load
    visit('/legacy')
  end

  def openTryNow
    @button_start.click
    @form_sign_up.isVisible
    @button_close_try_now.isVisible
  end

  def closeTryNow
    @button_close_try_now.click
    @form_sign_up.ifVisible
  end

  def enterEmail(email)
    @input_email_sign_up.send_keys(email)
  end

  def enterPassword1(pas1)
    @input_pas1_sign_up.send_keys(pas1)
  end
  
  def enterPassword2(pas2)
    @input_pas2_sign_up.send_keys(pas2)
  end

  def enterProjName(projName)
    @input_projName_sign_up.send_keys(projName)
  end

  def openSignIn
    @login_button.click
    @form_sign_in.isVisible
  end

  def enterLogin(email)
    @input_login.send_keys(email)
  end

  def enterPassword(pas)
    @input_password.send_keys(pas)
  end

  def invalidLogin
    @button_to_login.click
    @login_error.isVisible
  end

end