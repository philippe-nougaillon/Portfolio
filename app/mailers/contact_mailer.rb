class ContactMailer < ApplicationMailer
  def submitted(message)
    @message = message
    mail to: "philippe.nougaillon@gmail.com", cc:"p-edacquet@hotmail.fr", subject: "[PORTFOLIO] Nouveau contact"
  end
end
