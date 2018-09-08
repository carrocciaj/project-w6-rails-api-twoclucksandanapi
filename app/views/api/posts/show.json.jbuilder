json.links do
  json.self api_user_post_url(@user)
  json.list api_user_posts_url
  json.delete do
    json.method "DELETE"
    json.href api_user_post_url(@user)
  end
end
json.data do
  json.user_id @post.user_id
  json.username @post.user.username
  json.attributes do
    json.id @post.id
    json.body @post.body
    json.favorites_count @post.favorites.count
  end
end