json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :name, :description
  json.url subcategory_url(subcategory, format: :json)
end
