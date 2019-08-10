class UserMailer < ApplicationMailer
  default from: "prepare4babyapp@gmail.com"

  def welcome_email(params)
    @user = params
    @url = 'https://babygotchi.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to BabyGotchi')
  end

end
