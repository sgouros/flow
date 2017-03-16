

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Flow::Application.initialize!



#ActionMailer::Base.delivery_method = :sendmail
#ActionMailer::Base.sendmail_settings = {:location => '/usr/sbin/sendmail', :arguments => '-i -t'}



# Email configuration
#config.action_mailer.raise_delivery_errors = true

# Gmail SMTP server setup
#ActionMailer::Base.smtp_settings = {
#  :address => "smtp.gmail.com",
#  :port => 587,
#  :domaim => "gmail.com",
#  :user_name => "sgouros9@gmail.com",
#  :password => "geo@##!)",
#  :authentication => :plain,
#  :enable_starttls_auto => true
#}








