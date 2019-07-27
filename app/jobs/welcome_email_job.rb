class WelcomeEmailJob < ApplicationJob
  @queue = :emails_queue

  def perform(params)
    UserMailer.welcome_email(params).deliver_later
  end
end
