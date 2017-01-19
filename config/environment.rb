# Load the Rails application.
require_relative 'application'

ActionMailer::Base.smtp_settings = {
  :user_name => 'cunk111',# ENV['SENDGRID_USERNAME'], #
  :password => '<7-ER~mHm;67Ys?wMq', #ENV['SENDGRID_PASSWORD'], #
  :domain => 'lebonkoi.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
