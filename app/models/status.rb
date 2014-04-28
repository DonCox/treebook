class Status < ActiveRecord::Base
  #attr_accessible :content, :user
  belongs_to :user
  
  validate :content, presence: true,
            length: { minimum: 2 }

  validate :user_id, presence: true

end

class User < ActiveRecord::Base
  has_many :statuses
end
