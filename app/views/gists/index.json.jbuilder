json.array!(@gists) do |gist|
  json.extract! gist, :id, :title, :client_id, :category_id
  json.url gist_url(gist, format: :json)
end
