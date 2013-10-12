json.array!(@mous) do |mou|
  json.extract! mou, :firstName, :lastName, :phone, :jobTitle, :duration, :availability, :considerations
  json.url mou_url(mou, format: :json)
end
