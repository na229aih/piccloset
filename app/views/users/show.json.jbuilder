json.array! @user.followings do |user_following|
  json.id user_following.id
  json.nickname user_following.nickname
  json.profile user_following.profile.url
end

json.array! @user.followers do |user_follower|
  json.id user_follower.id
  json.nickname user_follower.nickname
  json.profile user_follower.profile.url
end