class CryingMailer < ApplicationMailer
  default from: "prepare4babyapp@gmail.com"

  def crying_email(params)
    @baby = params
    @url = 'https://babygotchi.herokuapp.com/'
    mail(to: @baby.user.email, subject: 'Baby Is Crying')
  end

end
