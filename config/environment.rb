# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Proj::Application.initialize!

#ActionMailer::Base.delivery_method = :smtp

###ActionMailer::Base.smtp_settings = {
  # :address => "smtp.tutorialspoint.com",
   #:port => 25,
   #:domain => "tutorialspoint.com",
   #:authentication => :login,
   #:user_name => "username",
   #:password => "password",
#}

Proj::Application.configure do
  # config.active_support.deprecation = :log
   #config.cache_classes = false

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'example.com',
  user_name:            'aparnathricovil@gmail.com',
  password:             'Raghunath8',
  authentication:       'plain',
  enable_starttls_auto: true  
  }
  
  config.action_mailer.raise_delivery_errors = true
  
  #ActiveRecord::Base.logger = Logger.new(STDOUT) 
  #ActiveRecord::Base.logger = Log4r::Logger.new("Application Log") 
  
  end