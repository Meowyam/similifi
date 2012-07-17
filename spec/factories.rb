FactoryGirl.define do
    factory :user do
        name "Test User"
        email "testuser@nekoai.com"
        password "foobar"
        password_confirmation "foobar"
    end
end
