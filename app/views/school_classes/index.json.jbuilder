json.array!(@school_classes) do |school_class|
  json.extract! school_class, :school_id, :size, :business_id, :contact_email
  json.url school_class_url(school_class, format: :json)
end
