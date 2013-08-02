json.array!(@people) do |person|
  json.extract! person, :name, :title, :address, :email, :created_by, :updated_by
  json.url person_url(person, format: :json)
end
