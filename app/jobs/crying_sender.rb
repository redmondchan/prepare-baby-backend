class CryingSender < ActiveJob::Base
  @queue = :emails_queue

  def perform(params)
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    puts "asdasdasdsasdsadsadsadsaddsadsdadsadadasdasdadsadasdadsadsadasdsadsadasdasdasdsadsadsaaddsadsadsadsadsadsadsadsadsadsadsadas"
    CryingMailer.crying_email(params).deliver_later
  end

end
