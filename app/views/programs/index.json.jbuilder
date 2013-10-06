json.array!(@programs) do |program|
  json.extract! program, :name, :location
  json.url program_url(program, format: :json)
end
