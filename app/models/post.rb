class Post < ApplicationRecord
  belongs_to :user
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  has_many :comments

  def formatted_tags
    self.tags.map.with_index { |tag, index| index == self.tags.length - 1 ? tag.name.capitalize : tag.name.capitalize + "," }
  end

  def number_of_comments
    self.comments.length
  end
end