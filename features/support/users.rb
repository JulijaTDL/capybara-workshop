require 'date'
module Users
  def Users.try_now_form
    @try_now_form ||= User.new(email: 'JulijaTDL@gmail.com', pas1: 'Parole', pas2: 'Parole', projName: 'Capybara - Workshop')
    @try_now_form
  end

  def Users.sign_in_form
    @sign_in_form ||= User.new(email: 'JulijaT_D_L@gmail.com', pas: 'Parole')
    @sign_in_form
  end

  class User
    attr_reader :email, :pas, :pas1, :pas2, :projName
    def initialize(args = {})
      @email = args[:email]
      @pas = args[:pas]
      @pas1 = args[:pas1]
      @pas2 = args[:pas2]
      @projName = args[:projName]
    end
  end
end