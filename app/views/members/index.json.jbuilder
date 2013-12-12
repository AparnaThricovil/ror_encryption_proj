json.array!(@members) do |member|
  json.extract! member, :name, :email, :login
  json.url member_url(member, format: :json)
end
