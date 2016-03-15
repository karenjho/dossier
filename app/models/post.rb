class Post < ActiveRecord::Base
  has_many :comments
  has_one :user, through: :comments

  validates :title, :body, presence: true
  before_save :formatted_title

  def formatted_title
    self.title = title.titleize
  end
end
