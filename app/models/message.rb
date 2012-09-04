class Message < ActiveRecord::Base
    attr_accessible :content, :user_name
    belongs_to :user
    default_scope order: 'messages.created_at DESC'

end
