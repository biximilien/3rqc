# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => ENV['SENDGRID_EMAIL_DOMAIN'],
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :tls => true,
  :enable_starttls_auto => true
}
