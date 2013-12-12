json.array!(@messages) do |message|
  json.extract! message, :userid, :publickey, :message
  json.url message_url(message, format: :json)
end
