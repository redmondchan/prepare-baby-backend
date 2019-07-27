class CryingSender < ActiveJob::Base
  @queue = :emails_queue

  def perform(params)
    CryingMailer.crying_email(params).deliver_later
  end

end
