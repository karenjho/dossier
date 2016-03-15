class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts

  has_secure_password

  validates :email, presence: true

  before_save :email_as_username

  def email_as_username
    if self.username = ""
      self.username = self.email
    else
    end
  end
end
