class UserMailer < ApplicationMailer
  default from: "prepare4babyapp@gmail.com"

  def welcome_email(params)
    @user = params
    @url = 'https://babygotchi.herokuapp.com/'
    @myemail = 'redmondchan92@gmail.com'
    mail(to: @user.email, @myemail, subject: 'Welcome to BabyGotchi')
  end

end
