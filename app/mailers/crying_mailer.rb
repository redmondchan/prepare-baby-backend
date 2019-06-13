class CryingMailer < ApplicationMailer
  default from: "prepare4babyapp@gmail.com"

  def crying_email(params)
    @baby = params
    @url = 'http://localhost:3000'
    mail(to: @baby.user.email, subject: 'Baby Is Crying')
  end

end
