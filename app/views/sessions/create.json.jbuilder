if @user
  json.id @user.id
  json.email @user.email
  json.loggedIn true
end