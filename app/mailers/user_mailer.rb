class UserMailer < ActionMailer::Base
    default :from => "admin@pandashop.co.uk"
    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
    end

    def password_reset(user)
        @user = user
        mail(:to => "#{user.name} <#{user.email}>", :subject => "Password reset")
    end
end
