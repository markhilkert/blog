json.id post.id
json.date post.date
json.preview_image post.preview_image
json.title post.title
json.body post.body
json.preview_text post.preview_text
json.tag_names post.tag_names

json.comments do
  json.array! post.comments, partial: 'api/comments/comment', as: :comment
end

json.tags do
  json.array! post.tags, partial: 'api/tags/tag', as: :tag
end

