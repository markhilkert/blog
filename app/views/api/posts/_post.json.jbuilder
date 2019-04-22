json.id post.id
json.date post.date
json.preview_image post.preview_image
json.title post.title
json.body post.body
json.preview_text post.preview_text
json.number_of_comments post.number_of_comments

json.comments do
  json.array! post.comments, partial: 'api/comments/comment', as: :comment
end

json.tags do
  json.array! post.tags.each do |tag|
    json.id tag.id
    json.name tag.name

    json.formatted do
      json.array! post.formatted_tags
    end
  end
end

