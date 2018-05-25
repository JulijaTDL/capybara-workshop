class Tests
  def initialize(pages)
    @pages = pages
<<<<<<< HEAD
  end 
  
  def signup_tests
    @signup_tests ||= SignupTest.new(@pages)
    @signup_tests
  end
=======
  end

  def login_tests
    @login_tests ||= LoginTest.new(@pages)
    @login_tests
  end

>>>>>>> 37bf0fb56a2394df6eadaef4b2e58b86649e3c32
end