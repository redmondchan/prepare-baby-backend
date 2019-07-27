class CryingEmailJob < ApplicationJob
  @queue = :emails_queue

  def perform(params)
    CryingMailer.crying_email(params).deliver_later
  end
end
