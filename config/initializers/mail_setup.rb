ActionMailer::Base.smtp_settings = {
  :address  =>"smtp.gmail.com",
  :port => 587,
  :domain => "asciicast.com",
  :username => "lujaw.shrestha123",
  :password => "kathmandu123",
  :authentication => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"