json.array!(@businesses) do |business|
  json.extract! business, :name, :address1, :address2, :city, :state, :zip, :phone
  json.url business_url(business, format: :json)
end
