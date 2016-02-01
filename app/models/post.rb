class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  before_save :formatted_title

  def formatted_title
    self.title = title.titleize
  end
end
