class Message < ActiveRecord::Base
    attr_accessible :content, :user_name
    belongs_to :user

    validates :content, presence: true
    validates :user_name, presence: true

    default_scope order: 'messages.created_at DESC'
end
