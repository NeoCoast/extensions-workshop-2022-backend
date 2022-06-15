json.id   asset.id
json.name asset.name
json.url  rails_blob_url(asset.file)

json.user do
  json.id    asset.user.id
  json.email asset.user.email
end