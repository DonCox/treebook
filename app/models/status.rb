class Status < ActiveRecord::Base
  #attr_accessible :content, :user
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :statuses
end
