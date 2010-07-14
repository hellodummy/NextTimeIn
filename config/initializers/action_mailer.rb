ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
   :enable_starttls_auto => true,
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "www.nexttime.in",
   :authentication => :plain,
   :user_name => "noreply@nexttime.in",
   :password => "7335A9"
 }