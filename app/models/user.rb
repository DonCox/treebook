class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  #attr_accessible :email, :password, :password_confirmation, :remember_me,
  #                :first_name, :last_name, :profile_name
  
  # the following three statements are for testing validation
  # comment out these statements to test for the failure when fields not entered
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
                    uniqueness: true,
                    format: {
                            with: /[a-zA-Z0-9_-]+/,
                            message: "must be formatted correctly."
                    }
  
  has_many :statuses
  has_many :user_friendships
  has_many :friends, through: :user_friendships
  
  def full_name
    first_name + " " + last_name
  end
  
  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)
    # will not work unless you have signed up for avatar
    "http://gravatar.com/avatar/#{hash}"
  end
  
end
