json.array!(@schools) do |school|
  json.extract! school, :name, :address1, :address2, :city, :state, :zipCode, :contactFirstName, :contactLastName, :contactEmail, :school_district_id
  json.url school_url(school, format: :json)
end
