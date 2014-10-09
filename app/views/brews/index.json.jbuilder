json.array!(@brews) do |brew|
  json.extract! brew, :id, :title, :description, :image_url, :origin, :website, :price
  json.url brew_url(brew, format: :json)
end
