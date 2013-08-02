json.array!(@users) do |user|
  json.extract! user, :name, :email, :last_login, :luna, :password_digest
  json.url user_url(user, format: :json)
end
