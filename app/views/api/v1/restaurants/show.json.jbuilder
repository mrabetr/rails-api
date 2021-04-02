json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
  # json.extract! comment.user, :email
  # json.user_id comment.user.id
  # json.email comment.user.email
  json.comment_user do
    json.id comment.user.id
    json.email comment.user.email
  end
end
# json.restaurant_user do
#   json.id @restaurant.user.id
#   json.email @restaurant.user.email
# end
