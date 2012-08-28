class Message < ActiveRecord::Base
    attr_accessible :content, :touser_id
    belongs_to :user
    belongs_to :touser, class_name: "User"
    default_scope order: 'messages.created_at DESC'
end
