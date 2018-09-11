# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '587',
  authentication: :plain,
  user_name: apikey,
  password: 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,
  domain: 'heroku.com',
  enable_starttls_auto: true
}
