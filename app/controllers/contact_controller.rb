class ContactController < ApplicationController

  def send_mail
    name = params[:name]
    address = params[:address]
    phone = params[:phone]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, address, phone, email, message).deliver_now
    flash[:notice] = "Votre message a été envoyé. Nous vous contacterons sous peu."
    redirect_to root_path(anchor: 'contact_form')
  end


end
