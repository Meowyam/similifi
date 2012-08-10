class UserMailer < ActionMailer::Base
    default :from => "admin@pandashop.co.uk"
    def registration_confirmation(user)
        mail(:to => user.email, :subject => "Registered")
    end
end
