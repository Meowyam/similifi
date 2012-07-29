namespace :db do
    desc "Fill database with sample data"
    task populate: :environment do
        admin = User.create!(name: "Testo",
                     email: "testo@nekoai.com",
                     password: "foobar",
                     password_confirmation: "foobar")
        admin.toggle!(:admin)
        99.times do |n|
            name = Faker::Name.name
            email = "testo-#{n+1}@nekoai.com"
            password = "password"
            User.create!(name: name,
                         email: email,
                         password: password,
                         password_confirmation: password)
        end

        users = User.all(limit: 6)
        50.times do
            content = Faker::Lorem.sentence(5)
            users.each { | user| user.microposts.create!(content: content) }
        end
    end
end
