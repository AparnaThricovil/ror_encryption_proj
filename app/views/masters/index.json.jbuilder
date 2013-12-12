json.array!(@masters) do |master|
  json.extract! master, :username, :email, :publickey, :privatekey
  json.url master_url(master, format: :json)
end
