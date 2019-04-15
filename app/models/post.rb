class Post < ApplicationRecord
  belongs_to :user
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  has_many :comments

  def tag_names
    self.tags.map { |tag| tag.name }
  end
end
