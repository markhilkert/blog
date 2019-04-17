json.id tag.id
json.name tag.name

json.posts do
  json.array! tag.posts.each do |post|
    json.id post.id
    json.date post.date
    json.preview_image post.preview_image
    json.title post.title
    json.preview_text post.preview_text
    json.number_of_comments post.number_of_comments

    json.formatted do
      json.tags do
        json.array! post.formatted_tags
      end
    end
  end
end