ActionMailer::Base.smtp_settings = {
    :address => ENV['MAIL_DOMAIN'],
    :port => 587,
    :user_name => ENV['MAIL_USERNAME'],
    :password => ENV['MAIL_PASSWORD'],
    :authentication => "plain",
    :enable_starttls_auto => true,
    :domain => 'heroku.com'
}

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.default_url_options[:host] = ENV['MAIL_HOST']
