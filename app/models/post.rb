class Post < ApplicationRecord
  belongs_to :user
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  has_many :comments
end
