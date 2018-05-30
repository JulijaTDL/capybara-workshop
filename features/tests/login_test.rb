class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def open_try_now
    @pages.page_home.openTryNow
  end

  def enter_info_in_try_now
    user = Users.try_now_form
    @pages.page_home.enterEmail(user.email)
    @pages.page_home.enterPassword1(user.pas1)
    @pages.page_home.enterPassword2(user.pas2)
    @pages.page_home.enterProjName(user.projName)
    sleep(1)
  end

  def close_try_now
    @pages.page_home.closeTryNow
  end

  def open_sign_in
    @pages.page_home.openSignIn
  end

  def submit_invalid_info()
    user = Users.sign_in_form
    @pages.page_home.enterLogin(user.email)
    @pages.page_home.enterPassword(user.pas)
    sleep(1)
  end

  def invalid_login
    @pages.page_home.invalidLogin
    sleep(1)
  end

end