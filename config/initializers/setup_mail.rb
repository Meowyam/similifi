ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :user_name => "iamdoomkitty@gmail.com",
    :password => "magister3ku64",
    :authentication => "plain",
    :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "http://crocusfields.herokuapp.com"
