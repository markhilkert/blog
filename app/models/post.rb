class Post < ApplicationRecord
  belongs_to :user
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  has_many :comments

  def formatted_tags
    formatted_tags = []

    (self.tags.length - 1).times do |index|
      formatted_tags << self.tags[index].name + ","
    end
    formatted_tags << self.tags[-1].name

    formatted_tags
  end
end
