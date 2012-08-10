class UserMailer < ActionMailer::Base
    default :from => "admin@pandashop.co.uk"
    def registration_confirmation(user)
        @user = user
        @url = "http://crocusfields.herokuapp.com"
        mail(:to => user.email, :subject => "Registered")
    end
end
