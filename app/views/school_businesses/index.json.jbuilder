json.array!(@school_businesses) do |school_business|
  json.extract! school_business, :school_id, :business_id
  json.url school_business_url(school_business, format: :json)
end
