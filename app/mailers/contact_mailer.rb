class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail to: "philippe.nougaillon@gmail.com", subject: "PORTFOLIO Nouveau contact"
  end
end
