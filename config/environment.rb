# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :domain => 'example.com',
  :port => 587,
  :user_name => "postersmm4@gmail.com",
  :password => "work24680",
  :authentication => 'login',
  :enable_starttls_auto => true
}