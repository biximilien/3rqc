class ContactMailer < ApplicationMailer

  def contact_email(name, address, phone, email, message)
    @name = name
    @address = address
    @email = email
    @phone = phone
    @message = message
    mail(to: "admin@3rqc.com", subject: "Nouveau message")
  end


end
