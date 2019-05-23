class UserMailer < ApplicationMailer
  default from: "prepare4babyapp@gmail.com"

  def welcome_email
    @url = 'http://localhost:3000'
    mail(to: 'prepare4babyapp@gmail.com', subject: 'Welcome to Baby Watch')
  end

end
